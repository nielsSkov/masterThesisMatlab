function [ q_dot,            ...
           theta1_dot_dot,   ...
           theta2_dot_dot,   ...
           x_dot_dot,        ...
           i_a,              ...
           E_delta,          ...
           E_T             ]  = simTwin( t, q, m1, m2, M, l1, l2,  ...
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
    catchAngle = 0.0156;
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
        x3  ;
        x4  ;
        x5  ;
        x6 ];

  %difference in energy with cooredinate system fixed at pivot point
  J1 = m1*(l1^2);
  J2 = m2*(l2^2);
  E_delta = (1/2)*J1*(x4^2) + (1/2)*J2*(x5^2)        ... %(function output)
          + m1*g*l1*(cos(x1) - 1) +  m2*g*l2*(cos(x2) - 1);  
  
  %kinetic energy
  T = .5*M*x6^2 + .5*m1*(x6 - l1*cos(x1)*x4)^2 + .5*m1*(-l1*sin(x1)*x4)^2  ...
                + .5*m2*(x6 - l2*cos(x2)*x5)^2 + .5*m2*(-l2*sin(x2)*x5)^2;
  
  %potential energy
  U = M*g*l1 + m1*g*( l1 + l1*cos(x1) ) + m2*g*( l1 + l2*cos(x2) );
  
  %total energy
  E_T = T + U; %(function output)
  
  kLQR = [ -1995.80  1802.84  29.42  -352.36  248.62  39.53  ];

  u = -kLQR*X;

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