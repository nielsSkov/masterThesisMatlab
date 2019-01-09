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
dataFile = 'now5.csv';

P_on  = 0;
KF_on = 1;

data = csvread( dataFile, 0, 0);

dataStart = 1;
dataEnd   = length(data)-00;

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%set tEnd = 0 to include all data
tEnd = 0;%1.535;
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

if KF_on
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
plot(t,theta1KF)
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')

subplot(3,2,3)
plot(t,theta2)
hold on
if KF_on
plot(t,theta2KF)
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_2$ [rad]')

subplot(3,2,5)
plot(t,x)
hold on
if KF_on
plot(t,xKF)
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$x$ [rad]')

subplot(3,2,2)
plot(t,theta1_dot)
hold on
if KF_on
plot(t,theta1_dotKF)
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')

subplot(3,2,4)
plot(t,theta2_dot)
hold on
if KF_on
plot(t,theta2_dotKF)
end
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')

subplot(3,2,6)
plot(t,x_dot)
hold on
if KF_on
plot(t,x_dotKF)
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




