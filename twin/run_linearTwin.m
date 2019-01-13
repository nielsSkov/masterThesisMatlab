clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twin

run('latexDefaults.m')

syms m1 m2 M l1 l2 g r b_c_c b_c_v b_p1_c b_p1_v b_p2_c b_p2_v k_tanh k_tau

syms x1 x2 x3 x4 x5 x6 u

noFriction = 1;

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

x_dot = [ x4                   ; % =   theta1_dot
          x5                   ; % =   theta2_dot
          x6                   ; % =        x_dot
          MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
                                 %     theta2_dot_dot
                                 %          x_dot_dot ]
x = [ x1  ;
      x2  ;
      x3  ;
      x4  ;
      x5  ;
      x6 ];

A = jacobian(x_dot,x);

B = jacobian(x_dot,u);

x1 = 0; x2 = 0; x3 = 0; x4 = 0; x5 = 0; x6 = 0;
k_tanh = 1;

b_c_c = 0; b_c_v = 0;
if noFriction
  b_p1_c = 0; b_p1_v = 0; b_p2_c = 0; b_p2_v = 0;
end

A = subs(A);
B = subs(B);
C = [ 1 0 0 0 0 0  ;
      0 1 0 0 0 0  ;
      0 0 1 0 0 0 ];

%-------controllability----------------------------------------------------

%controllability
calC = [ B A*B (A^2)*B (A^3)*B (A^4)*B (A^5)*B ];

%observability
calO = [ C C*A C*(A^2) C*(A^3) C*(A^4) C*(A^5) ]';

for i = 1:4
  if i == 1
    fprintf('\n\n-------  m1 == m2   &   l1 == l2  -------\n\n')
    run('initTwin')
    
    m2 = m1;  l2 = l1;
    
  elseif i == 2
    fprintf('\n\n-------  m1 != m2   &   l1 == l2  -------\n\n')
    run('initTwin')
    
    l2 = l1;
    
  elseif i == 3
    fprintf('\n\n-------  m1 == m2   &   l1 != l2  -------\n\n')
    run('initTwin')
    
    m2 = m1;
    
  elseif i == 4
    fprintf('\n\n-------  m1 != m2   &   l1 != l2  -------\n\n')
    run('initTwin')
  end
  
  fprintf( 'm1=%.4f, m2=%.4f, l1=%.4f, l2=%.4f\n\n', m1, m2, l1, l2 )


  vpa(subs(A),4);
  vpa(subs(B),4);

  A_n = double(subs(A));
  B_n = double(subs(B));
  C_n = C;

  %controllability
  calC_n = [ B_n A_n*B_n (A_n^2)*B_n (A_n^3)*B_n (A_n^4)*B_n (A_n^5)*B_n ];
  
  %observability
  calO_n = [ C_n          ;
             C_n*A_n      ;
             C_n*(A_n^2)  ;
             C_n*(A_n^3)  ;
             C_n*(A_n^4)  ;
             C_n*(A_n^5) ];

  rankCalC = rank(calC_n);
  rankCalO = rank(calO_n);

  if rankCalC == length(x)
    disp('The system is controllable!')
  else
    disp('The system is NOT controllable!')
  end

  if rankCalO == length(x)
    disp('The system is observable!')
  else
    disp('The system is NOT observable!')
  end
end
fprintf('\n\n')

%% -------Discrete Time Model----------------------------------------------

A = subs(A);
B = subs(B);

run('initTwin.m')

A = double(subs(A));
B = double(subs(B));
D = 0;

Fs = 149.925;           % Sampling frequency    [ Hz ]
Ts = 1/Fs;              % Sampling time         [ s ]

linSys = ss(A,B,C,D);

disSys = c2d(linSys,Ts,'tustin');

Ad = disSys.A;
Bd = disSys.B;
Cd = disSys.C;
Dd = disSys.D;

%% -------LQR Design-------------------------------------------------------

% theta1_max    [rad]       theta2_max    [rad]       x_max        [m]
  x1Max = 1;                x2Max = 1;                x3Max = .028;%.0001;

% theta1Dot_max [rad s^-1]  theta2Dot_max [rad s^-1]  xDot_max     [m s^-1] 
  x4Max = 1;              x5Max = 1;              x6Max = 1;%.0001;

iaMax  = 1;%4.85;                    % [A] ,  max continuous = 4.85 A
%uMax  = 0.005; %iaMax*k_tau/r;   % [N]
uMax   = iaMax*k_tau/r;           % [N]

Q = ...
[ 1/(x1Max^2) 0           0           0           0           0            ;
  0           1/(x2Max^2) 0           0           0           0            ;
  0           0           1/(x3Max^2) 0           0           0            ;
  0           0           0           1/(x4Max^2) 0           0            ;
  0           0           0           0           1/(x5Max^2) 0            ;
  0           0           0           0           0           1/(x6Max^2) ];

R = 1/(uMax^2);

%optimize J = Integral { x'Qx + u'Ru } dt

%kLQR = lqr(A, B, Q, R);

%       lqrd is used for contineous systems
kLQRD = lqrd(A, B, Q, R, Ts);

%        dlqr is used for already discretized systems
kDLQR = dlqr(Ad, Bd, Q, R);

%display compact k-vectors with 2 digits after comma for implementation
%fprintf('kLQR  = [ %.2f, %.2f, %.2f, %.2f, %.2f, %.2f ]\n\n', kLQR)
fprintf('kLQRD = [ %.2f, %.2f, %.2f, %.2f, %.2f, %.2f ]\n\n', kLQRD)
%fprintf('kDLQR = [ %.2f, %.2f, %.2f, %.2f, %.2f, %.2f ]\n\n', kDLQR)

% currently using this gain vector
% [ -2742.93, 2302.58, 107.09, -493.15, 328.26, 105.18 ]

%choose method (almost the same)
kLQR_D = kLQRD;
%kLQR_D = kDLQR;

%control law
%
% u = -kLQR*X ,   X = [ x1 x2 x3 x4 x5 x6 ]^T

%% -------LQR Design-------------------------------------------------------

% % theta1_max    [rad]       theta2_max    [rad]       x_max        [m]
%   x1Max = 0.01;             x2Max = 0.01;             x3Max = 0.01;
% 
% % theta1Dot_max [rad s^-1]  theta2Dot_max [rad s^-1]  xDot_max     [m s^-1] 
%   x4Max = 1;                x5Max = 1;                x6Max = 0.1;
% 
% iaMax  = 4.85/50;       % [A] ,  max continuous = 4.85 A
% uMax   = iaMax*k_tau/r;   % [N]
% 
% Q = ...
% [ 1/(x1Max^2) 0           0           0           0           0            ;
%   0           1/(x2Max^2) 0           0           0           0            ;
%   0           0           1/(x3Max^2) 0           0           0            ;
%   0           0           0           1/(x4Max^2) 0           0            ;
%   0           0           0           0           1/(x5Max^2) 0            ;
%   0           0           0           0           0           1/(x6Max^2) ];
% 
% R = 1/(uMax^2);
% 
% %optimize J = Integral { x'Qx + u'Ru } dt
% 
% kLQR = lqr(A_n, B_n, Q, R);
% 
% %display compact k-vector with 2 digits after comma
% fprintf('kLQR = [ %.2f  %.2f  %.2f  %.2f  %.2f  %.2f ]\n\n', kLQR)
% 







