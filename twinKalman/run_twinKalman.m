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

%control on/off   %  1 - controlled with LQR and linearized s.t.   up = 0
con = 1;          %  0 - not controlled      and linearized s.t. down = 0


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

if con == 1
  x1 = 0; x2 = 0; x3 = 0; x4 = 0; x5 = 0; x6 = 0;
else
  x1 = pi; x2 = pi; x3 = pi; x4 = pi; x5 = pi; x6 = pi;
end
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
C = [ 1 0 0 0 0 0
      0 1 0 0 0 0
      0 0 1 0 0 0 ];
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
if con == 1
  theta1_0         = .1;
  theta2_0         = .1;
else
  theta1_0         = pi-.1;
  theta2_0         = pi-.1;
end
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
[t, q] = ode45( @(t,q)                                           ...
                simTwin( t, q, m1, m2, M, l1, l2,          ...
                         g, k_tanh, r, k_tau,              ...
                         b_p1_c, b_p1_v,                   ...
                         b_p2_c, b_p2_v,                   ...
                         b_c_c, b_c_v, con           ),    ...
                tspan, init, options                             );

%assigning results of ode45 simulation
if con == 0
  theta1      =  q(:,1)-pi;
  theta2      =  q(:,2)-pi;
else
  theta1      =  q(:,1);
  theta2      =  q(:,2);
end
x           =  q(:,3);
theta1_dot  =  q(:,4);
theta2_dot  =  q(:,5);
x_dot       =  q(:,6);

%initializing 2nd derivatives and amature current
theta1_dot_dot   = zeros(size(t));
theta2_dot_dot   = zeros(size(t));
x_dot_dot        = zeros(size(t));
i_a              = zeros(size(t));
ia_rms           = zeros(size(t));
E_delta          = zeros(size(t));
E_T              = zeros(size(t));

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta1_dot_dot(i),     ...
        theta2_dot_dot(i),    ...
        x_dot_dot(i),         ...
        i_a(i),               ...
        E_delta(i),           ...
        E_T(i)     ]   = simTwin( t(i), q(i,:), m1, m2, M, l1, l2,  ...
                                  g, k_tanh, r, k_tau,              ...
                                  b_p1_c, b_p1_v,                   ...
                                  b_p2_c, b_p2_v,                   ...
                                  b_c_c, b_c_v, con                    );
end

windowSize = ceil(1/Ts);  %= 1 s long window
for i = 1:length(t)-windowSize
  ia_rms(i) = rms( i_a(i:i+windowSize) );
end

%calculating input vector from applied current
u = i_a.*k_tau./r;

%% -------ADD NOISE--------------------------------------------------------

%estimated
%measurement noise covariance
R_full = ...
[ 7.7114e-07  1.2205e-08 -3.5968e-10  1.0540e-04  7.7524e-07  3.2161e-07  ;
  1.2205e-08  9.2307e-07 -3.1029e-09  6.9161e-06  1.1652e-04  4.4608e-08  ;
 -3.5968e-10 -3.1029e-09  1.0616e-09  1.3746e-07  2.3827e-07  9.4527e-08  ;
  1.0540e-04  6.9161e-06  1.3746e-07  3.7390e-02  1.2350e-03  8.4425e-05  ;
  7.7524e-07  1.1652e-04  2.3827e-07  1.2350e-03  3.8354e-02  3.4860e-05  ;
  3.2161e-07  4.4608e-08  9.4527e-08  8.4425e-05  3.4860e-05  3.0262e-05 ];

x1 = theta1;
x2 = theta2;
x3 = x;
x4 = theta1_dot;
x5 = theta2_dot;
x6 = x_dot;

for i = 1:length(t)
  v_n = mvnrnd( [ x1(i) x2(i) x3(i) x4(i) x5(i) x6(i) ], R_full, 1 );
  x1(i) = v_n(1);
  x2(i) = v_n(2);
  x3(i) = v_n(3);
  x4(i) = v_n(4);
  x5(i) = v_n(5);
  x6(i) = v_n(6);
end

% %create variables for nummerical differentiations
% x_numDot      = zeros(size(t));
% theta1_numDot = zeros(size(t));
% theta2_numDot = zeros(size(t));
% 
% %initialize
% x_numDot(1)      = x(1);
% theta1_numDot(1) = theta1(1);
% theta2_numDot(1) = theta2(1);
% 
% %calculate nummerical differentiations
% for i = 2:length(t)
%   theta1_numDot(i) = ( x1(i)+x1(i-1) )/Ts;
%   theta2_numDot(i) = ( x2(i)+x2(i-1) )/Ts;
%   x_numDot(i)      = ( x3(i)+x3(i-1) )/Ts;
% end


%% -------KALMAN FILTER----------------------------------------------------

%>>
%>>>>---INITIALIZATION---------------------------------------------------
%>>

P0 = [ 0     0     0     0     0     0     ;
       0     0     0     0     0     0     ;
       0     0     0     0     0     0     ;
       0     0     0     0     0     0     ;
       0     0     0     0     0     0     ;
       0     0     0     0     0     0    ];


%guessed
%process noise (disturbance) covariance
Q = [ 1e+1  0     0     0     0     0     ;
      0     1e+1  0     0     0     0     ;
      0     0     1e+1  0     0     0     ;
      0     0     0     1e+1  0     0     ;
      0     0     0     0     1e+1  0     ;
      0     0     0     0     0     1e+1 ];

%estimated
%measurement noise covariance
R = [ 7.7114e-07  1.2205e-08 -3.5968e-10  ;
      1.2205e-08  9.2307e-07 -3.1029e-09  ;
     -3.5968e-10 -3.1029e-09  1.0616e-09 ];

% Ad = [ 1.0007e+00  2.7512e-05  0  6.6677e-03 -1.6497e-07           0  ;
%        3.8817e-05  1.0011e+00  0 -1.2727e-07  6.6632e-03           0  ;
%        7.7711e-06  8.7217e-06  1 -2.5479e-08 -5.2298e-08  6.6700e-03  ;
%        2.1397e-01  8.2496e-03  0  9.9930e-01 -4.9467e-05           0  ;
%        1.1639e-02  3.4024e-01  0 -3.8162e-05  9.9796e-01           0  ;
%        2.3302e-03  2.6152e-03  0 -7.6400e-06 -1.5681e-05  1.0000e+00 ];
% 
% Bd = [ 1.1173e-05  ;
%        1.7692e-05  ;
%        3.5419e-06  ;
%        3.3502e-03  ;
%        5.3050e-03  ;
%        1.0620e-03 ];
% 
% Cd = [ 1.0004e+000 13.7562e-006 0   3.3338e-003 -82.4866e-009 0.0000e+000  ;
%       19.4087e-006  1.0006e+000 0 -63.6358e-009   3.3316e-003 0.0000e+000  ;
%        3.8855e-006  4.3608e-006 1 -12.7397e-009 -26.1489e-009 3.3350e-003 ];


%should come from [measurement] @ initialization
x0 = [ x1(1) ;
       x2(1) ;
       x3(1) ;
       0     ;
       0     ;
       0    ];

xEst   = zeros([ length(x0), length(t) ]);
xPred  = zeros([ length(x0), length(t) ]);
P      = zeros([ size(P0),   length(t) ]);
K      = zeros([ size(Cd'),  length(t) ]);

y = [ x1'  ;
      x2'  ;
      x3' ];

xEst(:,1) = x0;
P(:,:,1)  = P0;


for k = 2:length(t)

  %>>
  %>>>>---PREDICTION-------------------------------------------------------
  %>>

  %calculating priori/predicted estimate
  xPred(:,k) = Ad*xEst(:,k-1) + Bd*u(k-1);

  %error covariance (measure of uncertainty in the predicted states)
  P(:,:,k)     = Ad*P(:,:,k-1)*Ad' + Q;

  %>>
  %>>>>---UPDATE-----------------------------------------------------------
  %>>

  %calculate Kalman gain
  K(:,:,k)  = P(:,:,k)*Cd'/( Cd*P(:,:,k)*Cd' + R );

  xEst(:,k) = xPred(:,k) + K(:,:,k)*( y(:,k) - Cd*xPred(:,k) );

  P(:,:,k)  = ( eye(6) - K(:,:,k)*Cd )*P(:,:,k);

end

%Kalman filter results
x1Est = xEst(1,:)';
x2Est = xEst(2,:)';
x3Est = xEst(3,:)';
x4Est = xEst(4,:)';
x5Est = xEst(5,:)';
x6Est = xEst(6,:)';


%% -------PLOT FIGURES-----------------------------------------------------
close all

%run('plotFigs.m')

figure
plot( t, x1, 'linewidth', 1.5 )
hold on
plot( t, x2, 'linewidth', 1.5 )
plot( t, x1Est, 'linewidth', 1.5 )
plot( t, x2Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
xlim([min(t) max(t)])
legend( '$\theta_1$', '$\theta_2$', 'location', 'southeast' )

figure
plot( t, x3, 'linewidth', 1.5 )
hold on
plot( t, x3Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$x$ [m]')
xlim([min(t) max(t)])

figure
plot( t, x4, 'linewidth', 1.5 )
hold on
plot( t, x5, 'linewidth', 1.5 )
hold on
plot( t, x4Est, 'linewidth', 1.5 )
plot( t, x5Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
xlim([min(t) max(t)])
legend( '$\dot{\theta}_1$', '$\dot{\theta}_2$', 'location', 'southeast' )

figure
plot( t, x6, 'linewidth', 1.5 )
hold on
plot( t, x6Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
xlim([min(t) max(t)])
























%% -------FIRST ATTEMPT (FAILED)-------------------------------------------

if 0
  P = [ 0     0     0     0     0     0     ;
        0     0     0     0     0     0     ;
        0     0     0     0     0     0     ;
        0     0     0     0     0     0     ;
        0     0     0     0     0     0     ;
        0     0     0     0     0     0    ];

%guessed
%process noise (disturbance) covariance
R1 = [ 1e+1  0     0     0     0     0     ;
       0     1e+1  0     0     0     0     ;
       0     0     1e+1  0     0     0     ;
       0     0     0     1e+1  0     0     ;
       0     0     0     0     1e+1  0     ;
       0     0     0     0     0     1e+1 ];
  
R = 5;

%estimated
%measurement noise covariance
Q = ...
[ 7.7114e-07  1.2205e-08 -3.5968e-10  1.0540e-04  7.7524e-07  3.2161e-07  ;
  1.2205e-08  9.2307e-07 -3.1029e-09  6.9161e-06  1.1652e-04  4.4608e-08  ;
 -3.5968e-10 -3.1029e-09  1.0616e-09  1.3746e-07  2.3827e-07  9.4527e-08  ;
  1.0540e-04  6.9161e-06  1.3746e-07  3.7390e-02  1.2350e-03  8.4425e-05  ;
  7.7524e-07  1.1652e-04  2.3827e-07  1.2350e-03  3.8354e-02  3.4860e-05  ;
  3.2161e-07  4.4608e-08  9.4527e-08  8.4425e-05  3.4860e-05  3.0262e-05 ];
  
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
  
  %adding process noise, w_p, to states
  w_n = mvnrnd( [ x1 x2 x3 x4 x5 x6 ], R1, 1 );

  q_dot = [ x4                   +   w_n(1)                   ;
            x5                   +   w_n(2)                   ;
            x6                   +   w_n(3)                   ;
            MM\(F - G - C - B )  + [ w_n(4) w_n(5) w_n(6) ]' ];
  
  end
end


























