function [ q_dot,          ...
           theta1_dot_dot, ...
           theta2_dot_dot, ...
           x_dot_dot,      ...
           i_a             ]  = simTwin( t, q, con, m1, m2, M, l1, l2,  ...
                                         g, k_tan, r, k_tau,            ...
                                         b_p1_c, b_p1_v,                ...
                                         b_p2_c, b_p2_v,                ...
                                         b_c_c, b_c_v                   )
  
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
  
  if con == 0 %no controller - only model
    u = 0;
  end
  
  MM = [  m1*(l1^2)      0               m1*l1*cos(x1)  ;
          0              m2*(l2^2)       m2*l2*cos(x2)  ;
          m1*l1*cos(x1)  m2*l2*cos(x2)   M+m1+m2       ];

  C = [ 0
        0
       -m1*l1*sin(x1)*x4^2 - m2*l2*sin(x2)*x5^2 ];

  G = [ -m1*g*l1*sin(x1)  ;
        -m2*g*l2*sin(x2)  ;
         0               ];

  F = [ 0  ;
        0  ;
        u ];

  B = [ b_p1_c*tanh(k_tan*x4) + b_p1_v*x4  ;
        b_p2_c*tanh(k_tan*x5) + b_p2_v*x5  ;
        b_c_c*tanh(k_tan*x6)  + b_c_v*x6  ];
  
  q_dot = [ x4                   ; % =   theta1_dot
            x5                   ; % =   theta2_dot
            x6                   ; % =        x_dot
            MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
                                   %     theta2_dot_dot
                                   %          x_dot_dot ]

  theta1_dot_dot = q_dot(4);
  theta2_dot_dot = q_dot(5);
  x_dot_dot      = q_dot(6);
  i_a            = u*r/k_tau;
end



%   MM = [  m1*(l1^2)        0                   m1*l1*cos(theta1)  ;
%           0                m2*(l2^2)           m2*l2*cos(theta2)  ;
%           m*l*cos(theta1)  m2*l2*cos(theta2)   M+m1+m2           ];
% 
%   C = [ 0
%         0
%        -m1*l1*sin(theta1)*theta1_dot^2 - m2*l2*sin(theta2)*theta2_dot^2 ];
% 
%   G = [ m1*g*l1*sin(theta1)  ;
%         m2*g*l2*sin(theta2)  ;
%         0                   ];
% 
%   F = [ 0  ;
%         0  ;
%         u ];
% 
%   B = [ b_p1_c*tanh(k_tan*theta1_dot) + b_p1_v*theta1_dot  ;
%         b_p2_c*tanh(k_tan*theta2_dot) + b_p2_v*theta2_dot  ;
%         b_c_c*tanh(k_tan*x_dot)       + b_c_v*x_dot       ];