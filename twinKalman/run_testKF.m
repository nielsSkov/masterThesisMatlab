clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinKalman

%add paths to data
addpath('~/syncDrive/uni/thesis/matlab/twinKalman/data')

run('latexDefaults.m')

%define variable for default matlab plot color
matlabBlue = [0 0.4470 0.7410];


%% -------IMPORT TEST DATA-------------------------------------------------

%q1 q2...
%swing24
%k13!!! :D
%dataFile = 'now5.csv';
%dataFile = 'Cnow4.csv';
%dataFile = 'kf101.csv'; % !! :D

%dataFile = 'workingKF3.csv';

%dataFile = 'wrokf1.csv';
dataFile = 'fixed3.csv'; %happy crying :'D

P_on  = 0;
KF_on = 1;
cOn   = 1;  %should also be ON for now*.csv-files

data = csvread( dataFile, 0, 0);

dataStart = 1;
dataEnd   = length(data);%200;%450;

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%-------measured--------------------------------------

%angle of pendulum 1
theta1       = data(dataStart:dataEnd,2);

%angle of pendulum 2
theta2       = data(dataStart:dataEnd,3);

%position of cart
x            = data(dataStart:dataEnd,4);

%velocity of pendulum 1
theta1_dot   = data(dataStart:dataEnd,5);

%velocity of pendulum 2
theta2_dot   = data(dataStart:dataEnd,6);

%velocity of cart
x_dot        = data(dataStart:dataEnd,7);

%-------From Kalman Filter----------------------------

if KF_on
%KF angle of pendulum 1
theta1KF     = data(dataStart:dataEnd,8+cOn);

%KF angle of pendulum 2
theta2KF     = data(dataStart:dataEnd,9+cOn);

%KFposition of cart
xKF          = data(dataStart:dataEnd,10+cOn);

%KF velocity of pendulum 1
theta1_dotKF = data(dataStart:dataEnd,11+cOn);

%KF velocity of pendulum 2
theta2_dotKF = data(dataStart:dataEnd,12+cOn);

%KF velocity of cart
x_dotKF      = data(dataStart:dataEnd,13+cOn);
end

%-------Kalman P--------------------------------------

if P_on
P = zeros(6,6,length(t));
k = 14;
for j = 1:6
  for i = 1:6
    P(i,j,:)  = data(dataStart:length(t),k);
    k = k+1;
  end
end
end

figure
subplot(3,2,1)
plot(t,theta1)
hold on
if KF_on
plot(t,theta1KF, 'linewidth', 1.5 )
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')

subplot(3,2,3)
plot(t,theta2)
hold on
if KF_on
plot(t,theta2KF, 'linewidth', 1.5 )
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_2$ [rad]')

subplot(3,2,5)
plot(t,x)
hold on
if KF_on
plot(t,xKF, 'linewidth', 1.5 )
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$x$ [rad]')

subplot(3,2,2)
plot(t,theta1_dot)
hold on
if KF_on
plot(t,theta1_dotKF, 'linewidth', 1.5 )
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')

subplot(3,2,4)
plot(t,theta2_dot)
hold on
if KF_on
plot(t,theta2_dotKF, 'linewidth', 1.5 )
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')

subplot(3,2,6)
plot(t,x_dot)
hold on
if KF_on
plot(t,x_dotKF, 'linewidth', 1.5 )
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')

if P_on
%set time from which to print P
P_t = 0.4;

P_print = P(:,:,length(t(t<P_t)));

%print P for easy code implementation
fprintf( 'P =\n' )
fprintf( '%.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n',   P_print(1,:) )
fprintf( '%.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n',   P_print(2,:) )
fprintf( '%.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n',   P_print(3,:) )
fprintf( '%.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n',   P_print(4,:) )
fprintf( '%.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n',   P_print(5,:) )
fprintf( '%.4f, %.4f, %.4f, %.4f, %.4f, %.4f \n\n', P_print(6,:) )
end




