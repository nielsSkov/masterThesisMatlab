close all
clear all
clc

%add path to twin pendulum simulation
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')

%% ------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

data1 = csvread('cartTest.csv');

%NOTE: All data should contained in colloum vectors

%skip (f.eks. 3) lines in data1
start = 3;

%time vector
t = data1(start:end,1);

%setting input to zero
u = zeros(size(t));

%output vector
y = data1(start:end,2);

%input
uin = [ t u ];

%initial guess
b_c_c = (3.021 + 2.746)/2;
b_c_v = (1.937 + 1.422)/2;
M     = 5.273+1.103;        %<--the 1.103 kg is the added motor

par = [ b_c_c b_c_v M ];  %<--manually set model parameters for simulation

%% -------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM -------------

%simulation of initial parameters
Ynew = sim_cartPendulum( u, t, par );

%-------------------------- PLOTTING RESULTS ------------------------------

%figure;

%plot( t, u,    'linewidth',1.4, 'color','[ 1  0 0 ]' ), hold on;
%plot( t, y,    'linewidth',1.4, 'color','[ 0 .5 0 ]' )
%plot( t, Ynew, 'linewidth',1.4, 'color','[ 0  0 1 ]' ), hold off;

%legend('Input', 'Measurement', 'Simulation', 'location','southeast')

%grid on, grid minor;
%set(gca, 'GridLineStyle',':', 'GridColor','k', 'GridAlpha',.6)

%s = tf('s');
%H = k/(tau*s+1)

%% ------------- USING sensetool FOR PARAMETER ESTIMATION -----------------

%making sure u and y is a column vector
u = u(:);
y = y(:);

save meas_cartPendulum t u y %creating meas'TestName'

figure;
run senseTool/mainest.m






