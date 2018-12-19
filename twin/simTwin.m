function [ q_dot,          ...
           theta1_dot_dot, ...
           theta2_dot_dot, ...
           x_dot_dot,      ...
           i_a,            ...
           E_delta1,       ...
           E_delta2,       ...
           E_T             ]  = simTwin( t, q, con, m1, m2, M, l1, l2,  ...
                                         g, k_tanh, r, k_tau,           ...
                                         b_p1_c, b_p1_v,                ...
                                         b_p2_c, b_p2_v,                ...
                                         b_c_c, b_c_v                   )
  
  persistent previousU;
  if isempty(previousU)
    previousU = 0;
  end
  
  persistent catchAngle;
  if isempty(catchAngle)
    catchAngle = 0.15;
  end
  
  theta1       = q(1);
  theta2       = q(2);
  x            = q(3);
  theta1_dot   = q(4);
  theta2_dot   = q(5);
  x_dot        = q(6);
  
  x1 = theta1;
  x2 = theta2;
  x3 = x;
  x4 = theta1_dot;
  x5 = theta2_dot;
  x6 = x_dot;
  
  catchTwin = 1;
  conX      = 1;
  fComp     = 0;

  %creating wrapped vertions of angles for catch controller
  x1Wrap = mod( (x1 + pi), 2*pi );
  if x1Wrap < 0
    x1Wrap = x1Wrap + 2*pi;
  end
  x1Wrap = x1Wrap - pi;
  
  x2Wrap = mod( (x2 + pi), 2*pi );
  if x2Wrap < 0
    x2Wrap = x2Wrap + 2*pi;
  end
  x2Wrap = x2Wrap - pi;
  
  X = [ x1Wrap  ;
        x2Wrap  ;
        x3      ;
        x4      ;
        x5      ;
        x6     ];
  
  %difference in energy with cooredinate system fixed at pivot point
  J1 = m1*(l1^2);
  J2 = m2*(l2^2);

  %local energy difference with fixed coordinate system
  E_delta1 = (1/2)*J1*(x4^2) + m1*g*l1*(cos(x1) - 1);  %(function output)
  E_delta2 = (1/2)*J2*(x5^2) + m2*g*l2*(cos(x2) - 1);  %(function output)

  %kinetic energy
  T = .5*M*x6^2 + .5*m1*(x6 - l1*cos(x1)*x4)^2 + .5*m1*(-l1*sin(x1)*x4)^2  ...
                + .5*m2*(x6 - l2*cos(x2)*x5)^2 + .5*m2*(-l2*sin(x2)*x5)^2;
  
  %potential energy
  U = M*g*l1 + m1*g*( l1 + l1*cos(x1) ) + m2*g*( l1 + l2*cos(x2) );
  
  %total energy
  E_T = T + U; %(function output)
  
  kLQR = [  -2218.52  1988.13  36.72  -391.63  272.40  47.26  ];
  
  if catchTwin && ( (abs(x1Wrap)+abs(x2Wrap)) < catchAngle  )%<-- catch controller
    catchAngle = .8;
    u = -kLQR*X;
    
    i_a = u*r/k_tau;
    
    iaMax = 8;
    if abs(i_a) > iaMax
      i_a = sign(i_a)*iaMax;
      u = i_a*k_tau/r;
    end

    energyCon = 0; %<--|
  else             %   | switch to select between energy control and
    energyCon = 1; %<--| catch controller depending on angle
  end

  if con == 0 && energyCon == 1      %<--no controller - only model
    u = 0;
  
  elseif con == 1 && energyCon == 1  %<--rudementary controller
    
    E_delta1 = E_delta1-.0326;
    E_delta2 = E_delta2-.0326;
    
    G = m1*l1*E_delta1*cos(x1)*x4 + m2*l2*E_delta2*cos(x2)*x5;
    
    k = 7.5;
    xDotDot = -k*G;
  
  elseif con == 2 && energyCon == 1  %<--sign-approx controller
    
    k = 2;
    
    epsilon = .01;
    
    G = m1*l1*E_delta1*cos(x1)*x4 + m2*l2*E_delta2*cos(x2)*x5;
    
    sgn = min( 1,max(-1,(1/epsilon)*(-G)) );
    
    if sgn == 0, sgn = 1; end
    
    xDotDot = k*sgn;
  
  elseif con == 3 && energyCon == 1  %<--sat-based controller (Åström)
    
    k = 19.5;
    
    E_delta1 = E_delta1-.027;
    E_delta2 = E_delta2-.027;
    
    G = m1*l1*E_delta1*cos(x1)*x4 + m2*l2*E_delta2*cos(x2)*x5;
    
    %if abs(G) < 0.1, G = 1; end
    
    i_max = 4.58;
    u_max = i_max*k_tau/r;
    a_max = u_max/(M+m1+m2);
    
    xDotDot = min( a_max, max(-a_max, -k*G ));
  
  elseif con == 4 && energyCon == 1   %<--sat-based controller
    
    k = 25;
    
    sgn1 = sign(cos(x1)*x4);
    sgn2 = sign(cos(x2)*x5);
    
    if sgn1 == 0, sgn1 = 1; end
    if sgn2 == 0, sgn2 = 1; end
    
    E_delta1 = E_delta1-.1;
    E_delta2 = E_delta2-.1;
    
    G = m1*l1*E_delta1*sgn1 + m2*l2*E_delta2*sgn2;
    
    i_max = 4.58;
    u_max = i_max*k_tau/r;
    a_max = u_max/(M+m1+m2);
    
    xDotDot = min( a_max, max(-a_max, -k*G ));

  end  
  
  if con > 0 && energyCon == 1
    MM = [  m1*(l1^2)       0              -m1*l1*cos(x1)  ;
            0               m2*(l2^2)      -m2*l2*cos(x2)  ;
           -m1*l1*cos(x1)  -m2*l2*cos(x2)   M+m1+m2       ];

    C = [ 0
          0
          m1*l1*sin(x1)*x4^2 + m2*l2*sin(x2)*x5^2 ];

    G = [ -m1*g*l1*sin(x1)  ;
          -m2*g*l2*sin(x2)  ;
           0               ];

    F = [ 0  ;
          0  ;
          previousU ];

    B = [ b_p1_c*tanh(k_tanh*x4) + b_p1_v*x4  ;
          b_p2_c*tanh(k_tanh*x5) + b_p2_v*x5  ;
          0                                  ];
         %b_c_c*tanh(k_tanh*x6)  + b_c_v*x6

    q_dot = [ x4                   ; % =   theta1_dot
              x5                   ; % =   theta2_dot
              x6                   ; % =        x_dot
              MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
                                     %     theta2_dot_dot
                                     %          x_dot_dot ]
    thetaDD1_predict = q_dot(4);
    thetaDD2_predict = q_dot(5);
    
    if conX
      K = [ 10.5460 15.8190 ];   %poles in [ -1   -2   ]
      %K = [ 3.9548  10.5460 ];  %poles in [ -.5  -1.5 ]
      %K = [ 0.2636  3.1638 ];   %poles in [ -.1  -.5  ]
    else
      K = [ 0 0 ];               %disable x-position/velocity control
    end
    
    %linear controller for x-position/velocity
    lin_u = -K*[ x3  ;
                 x6 ];
    
    %control signal (force)
    u = (M+m1+m2)*xDotDot                                               ...
      + m1*l1*sin(x1)*(x4^2) - m1*l1*cos(x1)*thetaDD1_predict           ...
      + m2*l2*sin(x2)*(x5^2) - m2*l2*cos(x2)*thetaDD2_predict  + lin_u;
  end
  
  %friction compensation
  if fComp
    u = u + b_c_c*tanh(k_tanh*x4) + b_c_v*x4;
  end
  
  i_a = u*r/k_tau;  %(function output)
  
  MM = [  m1*(l1^2)       0              -m1*l1*cos(x1)  ;
          0               m2*(l2^2)      -m2*l2*cos(x2)  ;
         -m1*l1*cos(x1)  -m2*l2*cos(x2)   M+m1+m2       ];

  C = [ 0
        0
        m1*l1*sin(x1)*x4^2 + m2*l2*sin(x2)*x5^2 ];

  G = [ -m1*g*l1*sin(x1)  ;
        -m2*g*l2*sin(x2)  ;
         0               ];

  F = [ 0  ;
        0  ;
        u ];

  B = [ b_p1_c*tanh(k_tanh*x4) + b_p1_v*x4  ;
        b_p2_c*tanh(k_tanh*x5) + b_p2_v*x5  ;
        b_c_c*tanh(k_tanh*x6)  + b_c_v*x6  ];
  
  q_dot = [ x4                   ; % =   theta1_dot
            x5                   ; % =   theta2_dot
            x6                   ; % =        x_dot
            MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
                                   %     theta2_dot_dot
                                   %          x_dot_dot ]

  theta1_dot_dot = q_dot(4);
  theta2_dot_dot = q_dot(5);
  x_dot_dot      = q_dot(6);
end



% MM = [  m1*(l1^2)         0                   -m1*l1*cos(theta1)  ;
%         0                 m2*(l2^2)           -m2*l2*cos(theta2)  ;
%        -m*l*cos(theta1)  -m2*l2*cos(theta2)    M+m1+m2           ];
% 
% C = [ 0
%       0
%       m1*l1*sin(theta1)*theta1_dot^2 + m2*l2*sin(theta2)*theta2_dot^2 ];
% 
% G = [ -m1*g*l1*sin(theta1)  ;
%       -m2*g*l2*sin(theta2)  ;
%        0                   ];
% 
% F = [ 0  ;
%       0  ;
%       u ];
% 
% B = [ b_p1_c*tanh(k_tanh*theta1_dot) + b_p1_v*theta1_dot  ;
%       b_p2_c*tanh(k_tanh*theta2_dot) + b_p2_v*theta2_dot  ;
%       b_c_c*tanh(k_tanh*x_dot)       + b_c_v*x_dot       ];