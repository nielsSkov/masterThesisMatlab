function [ q_dot,          ...
           theta_dot_dot,  ...
           x_dot_dot,      ...
           i_a             ]  = simCartPendulum( t, q, con, m, M, l,  ...
                                                 g, k_tanh, r, k_tau, ...
                                                 b_p_c, b_p_v,        ...
                                                 b_c_c, b_c_v         )
  
  theta      = q(1);
  x          = q(2);
  theta_dot  = q(3);
  x_dot      = q(4);
  
  x1 = theta;
  x2 = x;
  x3 = theta_dot;
  x4 = x_dot;
  
  if con == 0 %no controller - only model
    u = 0;
  elseif con == 1 %rudementary controller (Åström)
    k = 2;
    J = m*(l^2);
    E_delta = -(1/2)*J*(x3^2) + m*g*l*(cos(x1) - 1);
    u = k*E_delta*cos(x1)*x3;
  elseif con == 2 %sign-based controller (Åström)
    k = 5;
    J = m*(l^2);
    E_delta = -(1/2)*J*(x3^2) + m*g*l*(cos(x1) - 1);
    u = k*sign( E_delta*cos(x1)*x3 );
  elseif con == 3 %sat-based controller (Åström)
    k = 1/.03;
    J = m*(l^2);
    E_delta = -(1/2)*J*(x3^2) + m*g*l*(cos(x1) - 1);
    %  min( 1,max(-1,(1/epsilon)*) ) 
    a_max = g*2;
    u = min( a_max, max(-a_max, k*E_delta*sign( cos(x1)*x3 ) ));
  end
  
  MM = [  m*(l^2)       m*l*cos(x1)  ;
          m*l*cos(x1)   M+m         ];

  C = [ 0
        -m*l*sin(x1)*x3^2 ];

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
  x_dot_dot     = q_dot(4);
  i_a           = u*r/k_tau;
end