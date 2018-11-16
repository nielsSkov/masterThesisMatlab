clear all; close all; clc                                                  %#ok<CLALL>


%add path to pendulum simulation and relevant data
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/senseTool')
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest1')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest2')

%% ------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

clear all; close all; clc
%                                   first       last
%                                   row  col    row   col
data = csvread( '0m06.csv', 0, 0); %[ 1    0      0  4   ] );
plot(data(:,1),data(:,3))


%%

%data = csvread('testOffPointOne.csv');
%data = csvread('testOffPointTwo.csv');
%data = csvread('testOffPointThree.csv');

%data = csvread('testOffPointFour.csv');
%data = csvread('testOffPointFive.csv');
%data = csvread('testOffPointSix.csv');

data123 = 1;

%NOTE: All data should contained in colloum vectors

%-----initial guesses---------

  b_c_c   = 3.5;
  b_c_v   = 5;
  bcc_sub = 1.5;
  bcv_sub =0;

  M       = 6;
  
  %for cropping test data
  dataStart = 1;
  dataEnd   = length(data);%2669;


%for test pointOne to pointThree
% if data123 == 1
%   b_c_c   = 3.5;
%   b_c_v   = 5;
%   bcc_sub = 1.5;
%   bcv_sub =0;
% 
%   M       = 6;
%   
%   %for cropping test data
%   dataStart = 1198;
%   dataEnd   = 2669;
% else
%   %for test pointFour to pointSix
%   b_c_c   = 3.5;
%   b_c_v   = 5;
%   bcc_sub = .15;
%   bcv_sub =0;
%   
%   M       = 6;
%   
%   %for cropping test data
%   dataStart = 1228;
%   dataEnd   = 2669;
% end
%to find where to crop:
% plot(data(:,3))

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) )/1000000;

%setting input to zero
u = data(dataStart:dataEnd,2);

%output vector
y = data(dataStart:dataEnd,3);      %position of cart

%velocity
y_dot = data(dataStart:dataEnd,4);  %velocity of cart

%input
uin = [ t u ];

par0 = [ b_c_c b_c_v M ]% bcc_sub bcv_sub];  %<--manually set model parameters for simulation

%initial value from start of data
x_0     = y(1);
x_dot_0 = y_dot(1);

%% -------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM -------------

%simulation of initial parameters
Ynew = sim_cartPendulum( u, t, par0 );

%-------------------------- PLOTTING RESULTS ------------------------------

%figure;

%plot( t, u,    'linewidth',1.4, 'color','[ 1  0 0 ]' ), hold on;
% plot( t, y,    'linewidth',1.4, 'color','[ 0 .5 0 ]' )
% hold on
% plot( t, Ynew, 'linewidth',1.4, 'color','[ 0  0 1 ]' ), hold off;

%legend('Input', 'Measurement', 'Simulation', 'location','southeast')

%grid on, grid minor;
%set(gca, 'GridLineStyle',':', 'GridColor','k', 'GridAlpha',.6)

%s = tf('s');
%H = k/(tau*s+1)

%% ------------- USING sensetool FOR PARAMETER ESTIMATION -----------------

%making sure u and y is a column vector
u = u(:);
y = y(:);

process='_cartPendulum';

save meas_cartPendulum t u y %creating meas'TestName'

figure;
run mainest.m






