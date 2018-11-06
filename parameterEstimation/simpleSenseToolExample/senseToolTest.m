close all
clear all
clc

%% ------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

load('senseTool/measktau.mat')%<--test data containing:
                    %                         t - time
                    %                         u - input (square signal)
                    %                         y - output

uin = [ t' u ];

k = 1.2
tau = 2
par = [ k tau ];   %<--manually set model parameters for simulation

%% -------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM -------------

%simulation of initial parameters
Ynew = simTestName(u,t,par);

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

save measTestName t u y %creating measTestName

figure;
run senseTool/mainest.m






