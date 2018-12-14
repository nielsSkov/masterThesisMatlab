clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinKalman

run('latexDefaults.m')

%define variable for default matlab plot color
matlabBlue = [0 0.4470 0.7410];

%% -------Contineous Time Model--------------------------------------------

syms m1 m2 M l1 l2 g r b_c_c b_c_v b_p1_c b_p1_v b_p2_c b_p2_v k_tanh k_tau

syms x1 x2 x3 x4 x5 x6 u

noFriction = 0;

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
if noFriction == 1
  b_p1_c = 0; b_p1_v = 0; b_p2_c = 0; b_p2_v = 0;
end

A = subs(A)
B = subs(B)

run('initTwin.m')

A = double(subs(A))
B = double(subs(B))
C = zeros(1,6);
D = 0;

%% -------Discrete Time Model----------------------------------------------

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
  x1Max = 0.01;             x2Max = 0.01;             x3Max = 0.01;

% theta1Dot_max [rad s^-1]  theta2Dot_max [rad s^-1]  xDot_max     [m s^-1] 
  x4Max = 1;                x5Max = 1;                x6Max = 0.1;

iaMax  = 4.85/50;       % [A] ,  max continuous = 4.85 A
uMax   = iaMax*k_tau/r;   % [N]

Q = ...
[ 1/(x1Max^2) 0           0           0           0           0            ;
  0           1/(x2Max^2) 0           0           0           0            ;
  0           0           1/(x3Max^2) 0           0           0            ;
  0           0           0           1/(x4Max^2) 0           0            ;
  0           0           0           0           1/(x5Max^2) 0            ;
  0           0           0           0           0           1/(x6Max^2) ];

R = 1/(uMax^2);

%optimize J = Integral { x'Qx + u'Ru } dt

kLQR = lqr(A, B, Q, R);

kLQRD = lqrd(A, B, Q, R, Ts);

kDLQR = dlqr(Ad, Bd, Q, R);

%display compact k-vectors with 2 digits after comma
fprintf('kLQR  = [ %.2f  %.2f  %.2f  %.2f  %.2f  %.2f ]\n\n', kLQR)
fprintf('kLQRD = [ %.2f  %.2f  %.2f  %.2f  %.2f  %.2f ]\n\n', kLQRD)
fprintf('kDLQR = [ %.2f  %.2f  %.2f  %.2f  %.2f  %.2f ]\n\n', kDLQR)

%choose method (almost the same)
%kLQR_D = kLQRD;
kLQR_D = kDLQR;


%% -------Linear Simulations of Models With LQR----------------------------

linSys_cl = ss(A-B*kLQR,B,C,D);

disSys_cl = ss(Ad-Bd*kLQR_D,Bd,Cd,Dd,Ts);

tFinal = 4.5;

t  = 0:.0001:tFinal;
u  = zeros(size(t));

x0 = [ .1 .1  0  0  0  0 ];

[ yLin, tLin, xLin ] = initial( linSys_cl, x0, t );

[ yDis, tDis, xDis ] = initial( disSys_cl, x0, tFinal );

%contineous results
theta1       = xLin(:,1);
theta2       = xLin(:,2);
x            = xLin(:,3);
theta1_dot   = xLin(:,4);
theta2_dot   = xLin(:,5);
x_dot        = xLin(:,6);

%discrete results
D_theta1     = xDis(:,1);
D_theta2     = xDis(:,2);
D_x          = xDis(:,3);
D_theta1_dot = xDis(:,4);
D_theta2_dot = xDis(:,5);
D_x_dot      = xDis(:,6);

%plotting comparison of results
figure
hold on
plot(tLin,theta1)
plot(tLin,theta2)
plot(tDis,D_theta1)
plot(tDis,D_theta2)
grid on, grid minor
%axis([0  3.6243  -0.0117  0.0172 ]);
%xPI = 0; yPI = 1; run('piAxes.m')

% figure
% hold on
% plot(tLin,x)
% plot(tDis,D_x)
% 
% figure
% hold on
% plot(tLin,theta1_dot)
% plot(tLin,theta2_dot)
% plot(tDis,D_theta1_dot)
% plot(tDis,D_theta2_dot)
% 
% figure
% hold on
% plot(tLin,x_dot)
% plot(tDis,D_x_dot)


%% -------SIMULATION USING ODE45-------------------------------------------

run('initTwin.m')

noFriction     = 0;
noCartFriction = 1;

documentation = 0; %figures are plottet seperately if documentation is on

if noFriction
  b_c_c = 0; b_c_v = 0; b_p_c = 0; b_p_v = 0;
elseif noCartFriction
  b_c_c = 0; b_c_v = 0;
end

%initial conditions for ode45
theta1_0         = .1;
theta2_0         = .1;
x_0              = 0;
theta1_dot_0     = 0;
theta2_dot_0     = 0;
x_dot_0          = 0;

Fs = 149.925;    % Sampling frequency    [ Hz ]
Ts = 1/Fs;       % Sampling time         [ s ]

%final simulation time [s]
T_final = 4.5;

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ theta1_0 theta2_0 x_0 theta1_dot_0 theta2_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[t, q] = ode45( @(t,q)                                     ...
                simTwin( t, q, m1, m2, M, l1, l2,     ...
                         g, k_tanh, r, k_tau,              ...
                         b_p1_c, b_p1_v,                   ...
                         b_p2_c, b_p2_v,                   ...
                         b_c_c, b_c_v                   ), ...
                tspan, init, options                           );

%assigning results of ode45 simulation
theta1      =  q(:,1);
theta2      =  q(:,2);
x           =  q(:,3);
theta1_dot  =  q(:,4);
theta2_dot  =  q(:,5);
x_dot       =  q(:,6);

%initializing 2nd derivatives and amature current
theta1_dot_dot = zeros(size(t));
theta2_dot_dot = zeros(size(t));
x_dot_dot      = zeros(size(t));
i_a            = zeros(size(t));
ia_rms         = zeros(size(t));
E_delta        = zeros(size(t));
E_T            = zeros(size(t));

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta1_dot_dot(i),  ...
        theta2_dot_dot(i), ...
        x_dot_dot(i),      ...
        i_a(i),            ...
        E_delta(i),        ...
        E_T(i)     ]   = simTwin( t(i), q(i,:), m1, m2, M, l1, l2,  ...
                                  g, k_tanh, r, k_tau,              ...
                                  b_p1_c, b_p1_v,                   ...
                                  b_p2_c, b_p2_v,                   ...
                                  b_c_c, b_c_v                      );
end

windowSize = 1/Ts;  %= 1 s long window
for i = 1:length(t)-windowSize
  ia_rms(i) = rms( i_a(i:i+windowSize) );
end

run('plotFigs.m')

%% ----------ANIMATION-----------------------------------------------------

run('animation.m')





