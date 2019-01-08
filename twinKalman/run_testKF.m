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
dataFile = 'swing24.csv';

data = csvread( dataFile, 0, 0);

dataStart = 1;
dataEnd   = length(data)-00;

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%set tEnd = 0 to include all data
tEnd = 0;
if tEnd > 0
  t = t( 1:length( t(t<tEnd) ) );
end

%-------measured--------------------------------------

%angle of pendulum 1
theta1       = data(dataStart:length(t),2);

%angle of pendulum 2
theta2       = data(dataStart:length(t),3);

%position of cart
x            = data(dataStart:length(t),4);

%velocity of pendulum 1
theta1_dot   = data(dataStart:length(t),5);

%velocity of pendulum 2
theta2_dot   = data(dataStart:length(t),6);

%velocity of cart
x_dot        = data(dataStart:length(t),7);

%-------From Kalman Filter----------------------------

%KF angle of pendulum 1
theta1KF     = data(dataStart:length(t),8);

%KF angle of pendulum 2
theta2KF     = data(dataStart:length(t),9);

%KFposition of cart
xKF          = data(dataStart:length(t),10);

%KF velocity of pendulum 1
theta1_dotKF = data(dataStart:length(t),11);

%KF velocity of pendulum 2
theta2_dotKF = data(dataStart:length(t),12);

%KF velocity of cart
x_dotKF      = data(dataStart:length(t),13);

figure
subplot(3,2,1)
plot(t,theta1)
hold on
plot(t,theta1KF)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')

subplot(3,2,3)
plot(t,theta2)
hold on
plot(t,theta2KF)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_2$ [rad]')

subplot(3,2,5)
plot(t,x)
hold on
plot(t,xKF)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$x$ [rad]')

subplot(3,2,2)
plot(t,theta1_dot)
hold on
plot(t,theta1_dotKF)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')

subplot(3,2,4)
plot(t,theta2_dot)
hold on
plot(t,theta2_dotKF)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')

subplot(3,2,6)
plot(t,x_dot)
hold on
plot(t,x_dotKF)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
