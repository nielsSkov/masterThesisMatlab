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

%% -------IMPORT TEST DATA-------------------------------------------------

%dataFile = 'tuneKF4.csv';
dataFile = 'now4.csv';

data = csvread( dataFile, 0, 0);

dataStart = 1;
dataEnd   = length(data);

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%set tEnd = 0 to include all data
tEnd = 3;%1.535;
if tEnd > 0
  t = t( 1:length( t(t<tEnd) ) );
end

%-------measured--------------------------------------

%angle of pendulum 1
theta1     = data(dataStart:length(t),2);

%angle of pendulum 2
theta2     = data(dataStart:length(t),3);

%position of cart
x          = data(dataStart:length(t),4);

%velocity of pendulum 1
theta1_dot = data(dataStart:length(t),5);

%velocity of pendulum 2
theta2_dot = data(dataStart:length(t),6);

%velocity of cart
x_dot      = data(dataStart:length(t),7);

%velocity of cart
u          = data(dataStart:length(t),8);

x1 = theta1;
x2 = theta2;
x3 = x;
x4 = theta1_dot;
x5 = theta2_dot;
x6 = x_dot;

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
Q = [ 10    0     0     0     0     0       ;
      0     10    0     0     0     0       ;
      0     0     10    0     0     0       ;
      0     0     0     1000  0     0       ;
      0     0     0     0     1000  0       ;
      0     0     0     0     0     100000 ];

%estimated
%measurement noise covariance
% R = [ 7.7114e-07  1.2205e-08 -3.5968e-10  ;
%       1.2205e-08  9.2307e-07 -3.1029e-09  ;
%      -3.5968e-10 -3.1029e-09  1.0616e-09 ];

R = [ 0.000003004588387, 0.000004480884893, 0.000000676711753  ;
      0.000004480884893, 0.000007922412675, 0.000001200581026  ;
      0.000000676711753, 0.000001200581026, 0.000000200792964 ];

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

limx1 = min(t);
limx2 = max(t);

%limx1 = 3;
%limx2 = 4;

figure
subplot(3,1,1)
plot( t, x1, 'linewidth', 1.5 )
hold on
plot( t, x1Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')
xlim([limx1 limx2])

subplot(3,1,2)
plot( t, x2, 'linewidth', 1.5 )
hold on
plot( t, x2Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta_2$ [rad]')
xlim([limx1 limx2])

subplot(3,1,3)
plot( t, x3, 'linewidth', 1.5 )
hold on
plot( t, x3Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$x$ [m]')
xlim([limx1 limx2])

figure
plot( t, x4, 'linewidth', 1.5 )
hold on
plot( t, x4Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_1$ [rad$\cdot$s$^{-1}$]')
xlim([limx1 limx2])

figure
plot( t, x5, 'linewidth', 1.5 )
hold on
plot( t, x5Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_2$ [rad$\cdot$s$^{-1}$]')
xlim([limx1 limx2])

figure
plot( t, x6, 'linewidth', 1.5 )
hold on
plot( t, x6Est, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
xlim([limx1 limx2])

%see how elements of P converge
% figure
% hold on
% for i=1:6
%   for j=1:6
%     plot(t,squeeze(P(i,j,:)))
%   end
% end
% grid on, grid minor
% xlabel('$t$ [s]')
% ylabel('$P_{i,j}$]')
% xlim([limx1 limx2])


%set time from which to print P
P_t = 4;

P_print = P(:,:,length(t(t<P_t)));

%print P, Q and R for easy code implementation
fprintf( 'P =\n' )
fprintf( '%16.12f, %16.12f, %17.12f, %18.12f, %18.12f, %19.12f,\n',   P_print(1,:) )
fprintf( '%16.12f, %16.12f, %17.12f, %18.12f, %18.12f, %19.12f,\n',   P_print(2,:) )
fprintf( '%16.12f, %16.12f, %17.12f, %18.12f, %18.12f, %19.12f,\n',   P_print(3,:) )
fprintf( '%16.12f, %16.12f, %17.12f, %18.12f, %18.12f, %19.12f,\n',   P_print(4,:) )
fprintf( '%16.12f, %16.12f, %17.12f, %18.12f, %18.12f, %19.12f,\n',   P_print(5,:) )
fprintf( '%16.12f, %16.12f, %17.12f, %18.12f, %18.12f, %19.12f \n\n', P_print(6,:) )

fprintf( 'Q =\n' )
fprintf( '%2.0f, %2.0f, %2.0f, %4.0f, %4.0f, %6.0f,\n',   Q(1,:) )
fprintf( '%2.0f, %2.0f, %2.0f, %4.0f, %4.0f, %6.0f,\n',   Q(2,:) )
fprintf( '%2.0f, %2.0f, %2.0f, %4.0f, %4.0f, %6.0f,\n',   Q(3,:) )
fprintf( '%2.0f, %2.0f, %2.0f, %4.0f, %4.0f, %6.0f,\n',   Q(4,:) )
fprintf( '%2.0f, %2.0f, %2.0f, %4.0f, %4.0f, %6.0f,\n',   Q(5,:) )
fprintf( '%2.0f, %2.0f, %2.0f, %4.0f, %4.0f, %6.0f \n\n', Q(6,:) )

fprintf( 'R =\n' )
fprintf( '%.15f, %.15f, %.15f,\n',  R(1,1:3) )
fprintf( '%.15f, %.15f, %.15f,\n',  R(2,1:3) )
fprintf( '%.15f, %.15f, %.15f\n\n', R(3,1:3) )





