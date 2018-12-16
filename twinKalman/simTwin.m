function [ q_dot,            ...
           theta1_dot_dot,   ...
           theta2_dot_dot,   ...
           x_dot_dot,        ...
           noise_theta1,     ...
           noise_theta2,     ...
           noise_x,          ...
           noise_theta1_dot, ...
           noise_theta2_dot, ...
           noise_x_dot,      ...
           x1Est,            ...
           x2Est,            ...
           x3Est,            ...
           x4Est,            ...
           x5Est,            ...
           x6Est,            ...
           i_a,              ...
           E_delta,          ...
           E_T             ]  = simTwin( t, q, m1, m2, M, l1, l2,  ...
                                         g, k_tanh, r, k_tau,           ...
                                         b_p1_c, b_p1_v,                ...
                                         b_p2_c, b_p2_v,                ...
                                         b_c_c, b_c_v, noiseOn          )
  
  persistent previousU;
  if isempty(previousU)
    previousU = 0;
  end
  
  persistent xEst;
  if isempty(xEst)
  
    xEst = [ 0.1 ;
             0.1 ;
             0   ;
             0   ;
             0   ;
             0  ];
  end
  
  persistent P;
  if isempty(P)
  
    P = [ 0     0     0     0     0     0     ;
          0     0     0     0     0     0     ;
          0     0     0     0     0     0     ;
          0     0     0     0     0     0     ;
          0     0     0     0     0     0     ;
          0     0     0     0     0     0    ];
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

%guessed
%process noise (disturbance) covariance
R1 = [ 1e+1  0     0     0     0     0     ;
      0     1e+1  0     0     0     0     ;
      0     0     1e+1  0     0     0     ;
      0     0     0     1e+1  0     0     ;
      0     0     0     0     1e+1  0     ;
      0     0     0     0     0     1e+1 ].*1000;
  
    R = 5;
    
%estimated
%measurement noise covariance
Q = ...
[ 7.7114e-07  1.2205e-08 -3.5968e-10  1.0540e-04  7.7524e-07  3.2161e-07  ;
  1.2205e-08  9.2307e-07 -3.1029e-09  6.9161e-06  1.1652e-04  4.4608e-08  ;
 -3.5968e-10 -3.1029e-09  1.0616e-09  1.3746e-07  2.3827e-07  9.4527e-08  ;
  1.0540e-04  6.9161e-06  1.3746e-07  3.7390e-02  1.2350e-03  8.4425e-05  ;
  7.7524e-07  1.1652e-04  2.3827e-07  1.2350e-03  3.8354e-02  3.4860e-05  ;
  3.2161e-07  4.4608e-08  9.4527e-08  8.4425e-05  3.4860e-05  3.0262e-05 ].*10;
  
  if noiseOn
    v_n = mvnrnd( [ x1 x2 x3 x4 x5 x6 ], Q, 1 );

    x1 = v_n(1);
    x2 = v_n(2);
    x3 = v_n(3);
    x4 = v_n(4);
    x5 = v_n(5);
    x6 = v_n(6);
  
  noise_theta1     = x1;
  noise_theta2     = x2;
  noise_x          = x3;
  
  %measurement
  y_k = [ x1  ;
          x2  ;
          x3  ;
          x4  ;
          x5  ;
          x6 ];
  
  %-------INITIALIZATION---------------------------------------------------
  
Ad = ...
[ 1.0007e+00  2.7512e-05           0  6.6677e-03 -1.6497e-07           0  ;
  3.8817e-05  1.0011e+00           0 -1.2727e-07  6.6632e-03           0  ;
  7.7711e-06  8.7217e-06  1.0000e+00 -2.5479e-08 -5.2298e-08  6.6700e-03  ;
  2.1397e-01  8.2496e-03           0  9.9930e-01 -4.9467e-05           0  ;
  1.1639e-02  3.4024e-01           0 -3.8162e-05  9.9796e-01           0  ;
  2.3302e-03  2.6152e-03           0 -7.6400e-06 -1.5681e-05  1.0000e+00 ];

Bd = [ 1.1173e-05  ;
       1.7692e-05  ;
       3.5419e-06  ;
       3.3502e-03  ;
       5.3050e-03  ;
       1.0620e-03 ];

Cd = ...
[ 1.1143e+00  1.1761e+00  1.0000e+00  1.0030e+00  1.0023e+00  1.0033e+00 ];
  
  %-------PREDICTION-------------------------------------------------------
  
  %calculating priori/predicted estimate
  x_pred_k  = Ad*xEst + Bd*previousU;

  %error covariance (measure of uncertainty in the predicted states)
  P_pred_k = Ad*P*Ad' + Q;
  
  %-------UPDATE-----------------------------------------------------------

  %calculate Kalman gain
  
  size(P_pred_k), size(Cd'), size(Cd), size(P_pred_k), size(Cd'), size(R)
  
  K_k = P_pred_k*Cd'./( Cd*P_pred_k*Cd' + R );

  xEst = x_pred_k + K_k*( y_k - Cd*x_pred_k );

  P = ( eye(6) - K_k*Cd )*P_pred_k;

  x1Est = xEst(1);
  x2Est = xEst(2);
  x3Est = xEst(3);
  x4Est = xEst(4);
  x5Est = xEst(5);
  x6Est = xEst(6);
  
  %------------------------------------------------------------------------
  end
  
  
  
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
  
  %adding process noise, w_p, to states
  
  if noiseOn
    w_n = mvnrnd( [ x1 x2 x3 x4 x5 x6 ], R1, 1 );

    q_dot = [ x4                   +   w_n(1)                   ;
              x5                   +   w_n(2)                   ;
              x6                   +   w_n(3)                   ;
              MM\(F - G - C - B )  + [ w_n(4) w_n(5) w_n(6) ]' ];
  else
  
  q_dot = [ x4                   ; % =   theta1_dot
            x5                   ; % =   theta2_dot
            x6                   ; % =        x_dot
            MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
                                   %     theta2_dot_dot
                                   %          x_dot_dot ]
  end

  theta1_dot_dot = q_dot(4);
  theta2_dot_dot = q_dot(5);
  x_dot_dot      = q_dot(6);
  
  noise_theta1_dot = x1;
  noise_theta2_dot = x2;
  noise_x_dot      = x3;
end