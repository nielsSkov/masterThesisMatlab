  function [ q_dot,         ...
             theta_dot_dot, ...
             x_dot_dot,     ...
             i_a,           ...
             E_delta        ]  = simCartPendulum( t, q,                ...
                                                  con, m, M, l,        ...
                                                  g, k_tanh, r, k_tau, ...
                                                  b_p_c, b_p_v,        ...
                                                  b_c_c, b_c_v         )
  persistent previousU;
  if isempty(previousU)
    previousU = 0;
  end
  
  theta      = q(1);
  x          = q(2);
  theta_dot  = q(3);
  x_dot      = q(4);
  
  x1 = theta;
  x2 = x;
  x3 = theta_dot;
  x4 = x_dot;

 %difference in energy with cooredinate system fixed at pivot point
  J = m*(l^2);
  E_delta = (1/2)*J*(x3^2) + m*g*l*(cos(x1) - 1);  %(function output)
  
  if con == 0 %no controller - only model
    u = 0;
  elseif con == 1 %rudementary controller (Åström)
    k = 2;
    xDotDot = -k*E_delta*cos(x1)*x3;
  elseif con == 2 %sign-based controller (Åström)
    k = 2;
    epsilon = .03;
    sgnApprox = min( 1,max(-1,(1/epsilon)*(-E_delta*cos(x1)*x3)) );
    xDotDot = k*sgnApprox; %sign( E_delta*cos(x1)*x3 );
  elseif con == 3 %sat-based controller (Åström)
    k = 100;
    epsilon = .03;
    sgn = min( 1,max(-1,(1/epsilon)*cos(x1)*x3) );
    %sgn = sign(cos(x1)*x3);
    i_max = 4.58;
    u_max = i_max*k_tau/r;
    a_max = u_max/(M+m) -1;
    xDotDot = min( a_max, max(-a_max, -k*E_delta*sgn ));
  end
  
  if con > 0
      MM = [  m*(l^2)      -m*l*cos(x1)  ;
             -m*l*cos(x1)   M+m         ];

      C = [ 0
            m*l*sin(x1)*x3^2 ];

      G = [ -m*g*l*sin(x1)  ;
             0             ];

      F = [ 0  ;
            previousU ];

      B = [ b_p_c*tanh(k_tanh*x3) + b_p_v*x3  ;
            b_c_c*tanh(k_tanh*x4) + b_c_v*x4 ];

      q_dot = [ x3                   ; % =   theta_dot
                x4                   ; % =       x_dot
                MM\(F - G - C - B ) ]; % = [ theta_dot_dot
                                       %         x_dot_dot ]
    thetaDD_predict = q_dot(3);
    
    k1 = 10.5460;
    k2 = 15.8190;
    lin_u = -k1*x2 -k2*x4;
    
    %enable to include cart friction
    if 0
      u = (M+m)*xDotDot + m*l*sin(x1)*(x3^2) -      ...
          - m*l*cos(x1)*thetaDD_predict +           ...
          + b_c_c*tanh(k_tanh*x4) + b_c_v*x4 +lin_u ;
    else
      u = (M+m)*xDotDot + m*l*sin(x1)*(x3^2) -  ...
          - m*l*cos(x1)*thetaDD_predict +lin_u ;
    end
  end
  
  MM = [  m*(l^2)      -m*l*cos(x1)  ;
         -m*l*cos(x1)   M+m         ];

  C = [ 0
        m*l*sin(x1)*x3^2 ];

  G = [ -m*g*l*sin(x1)  ;
         0             ];

  F = [ 0  ;
        u ];

  B = [ b_p_c*tanh(k_tanh*x3) + b_p_v*x3  ;
        b_c_c*tanh(k_tanh*x4) + b_c_v*x4 ];
  
  q_dot = [ x3                   ; % =   theta_dot
            x4                   ; % =       x_dot
            MM\(F - G - C - B ) ]; % = [ theta_dot_dot
                                   %         x_dot_dot ]

  theta_dot_dot = q_dot(3);
  previousU     = u; %persistant (for next loop)
  x_dot_dot     = q_dot(4);
  i_a           = u*r/k_tau;
end