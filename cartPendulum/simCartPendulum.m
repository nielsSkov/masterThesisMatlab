function [ q_dot,         ...
           theta_dot_dot, ...
           x_dot_dot,     ...
           i_a,           ...
           E_delta,       ...
           E_T            ]  = simCartPendulum( t, q, u, tvec,         ...
                                                con, conX, slm, noLim, ...
                                                iaLim, m, M, l, g,     ...
                                                k_tanh, r, k_tau,      ...
                                                b_p_c, b_p_v,          ...
                                                b_c_c, b_c_v, fComp    )
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
  
  catchAngle = 0.13; %when catch enable, stay in catch
  
  %creating wrapped vertion of angle for sliding mode
  x1Wrap = mod( (x1 + pi), 2*pi );
  if x1Wrap < 0
    x1Wrap = x1Wrap + 2*pi;
  end
  x1Wrap = x1Wrap - pi;
  
  if slm && ( abs(x1Wrap) < catchAngle  ) %<-- catch controller
    
    k_s     = [ 7.3918 -1.3414 -5.5344 ];
    k1      = k_s(1);
    k2      = k_s(2);
    k3      = k_s(3);
    
    g_b_inv = M + m - m*cos(x1Wrap)^2;
    
    rho     = 6.2;
    beta0   = 0.1;
    beta    = rho + beta0;
    
    s       = x4 - k2*(x3 - (x4*cos(x1Wrap))/l) + k1*x1Wrap + k3*x2;
    
    epsilon = 0.03;
    satS    = min( 1, max(-1, (1/epsilon)*s));
    
    u       =  -satS*beta*g_b_inv;

    energyCon = 0; %<--|
  else             %   |
    energyCon = 1; %<-- switch to select between energy control and
  end              %    catch controller depending on angle
  
  %difference in energy with cooredinate system fixed at pivot point
  J = m*(l^2);
  E_delta = (1/2)*J*(x3^2) + m*g*l*(cos(x1) - 1);  %(function output)
  
  if con == 0 && energyCon == 1      %<--no controller - only model
    u = 0;
  
  elseif con == 1 && energyCon == 1  %<--rudementary controller (Åström)
    k = 1.3;
    xDotDot = -k*E_delta*cos(x1)*x3;
  
  elseif con == 2 && energyCon == 1  %<--sign-based controller (Åström)
    k = 2.7;
    sgn = sign(-E_delta*cos(x1)*x3);
    if sgn == 0 && E_delta ~= 0
      sgn = 1;
    end
    xDotDot = k*sgn;
  
  elseif con == 3 && energyCon == 1  %<--approximated sign-based
    k = 2.7;                            %   controller (Åström)
    epsilon = .01;
    if noLim
      E_delta = E_delta-.004;
      k = k+2.7;
    end
    sgn = min( 1,max(-1,(1/epsilon)*(-E_delta*cos(x1)*x3)) );
    if sgn == 0 && E_delta ~= 0
      sgn = 1;
    end
    xDotDot = k*sgn;
  
  elseif con == 4 && energyCon == 1   %<--sat-based controller (Åström)
    k = 200;
    sgn = sign(cos(x1)*x3);
    if sgn == 0
      sgn = 1;
    end
    i_max = 4.58;
    u_max = i_max*k_tau/r;
    a_max = u_max/(M+m);
    if noLim
      E_delta = E_delta-.0015;
      a_max = a_max*2;
    end
    xDotDot = min( a_max, max(-a_max, -k*E_delta*sgn ));
  
  elseif con == -1
    u = interp1(tvec,u,t);
  end
  
  if con > 0 && energyCon == 1
      MM = [  m*(l^2)      -m*l*cos(x1)  ;
             -m*l*cos(x1)   M+m         ];

      C = [ 0
            m*l*sin(x1)*x3^2 ];

      G = [ -m*g*l*sin(x1)  ;
             0             ];

      F = [ 0  ;
            previousU ];

      B = [ b_p_c*tanh(k_tanh*x3) + b_p_v*x3  ;
            0                                ];
            %b_c_c*tanh(k_tanh*x4) + b_c_v*x4

      q_dot = [ x3                   ; % =   theta_dot
                x4                   ; % =       x_dot
                MM\(F - G - C - B ) ]; % = [ theta_dot_dot
                                       %         x_dot_dot ]
    thetaDD_predict = q_dot(3);
    
    if conX
      K = [ 10.5460 15.8190 ];   %poles in [ -1   -2   ]
      %K = [ 3.9548  10.5460 ];  %poles in [ -.5  -1.5 ]
      %K = [ 0.2636  3.1638 ];   %poles in [ -.1  -.5  ]
    else
      K = [ 0 0 ];               %disable x-position/velocity control
    end
    
    %linear controller for x-position/velocity
    lin_u = -K*[ x2  ;
                 x4 ];
    
    %control signal (force)
    u = (M+m)*xDotDot + m*l*sin(x1)*(x3^2)   ...
      - m*l*cos(x1)*thetaDD_predict + lin_u  ;
    
  end
  
  %cart friction compensation
  if fComp
    u = u + b_c_c*tanh(k_tanh*x4) + b_c_v*x4;
  end
  
  if iaLim
    i_peak = 7;
    if abs(u*r/k_tau) > i_peak && noLim == 0
      i_a = sign(u)*i_peak;
    else
      i_a = u*r/k_tau;
    end
    u = i_a*k_tau/r;
  else
    i_a = u*r/k_tau;
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
  x_dot_dot     = q_dot(4);
  previousU     = u; %persistant (for next loop)
  E_T = (M*x4^2)/2 + (m*x4^2)/2  ...
      + (l^2*m*x3^2)/2 + M*g*l   ...
      + g*l*m + g*l*m*cos(x1) - l*m*x3*x4*cos(x1);
end