clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinKalman

%add paths to data
addpath('~/syncDrive/uni/thesis/matlab/twinKalman/data')

run('latexDefaults.m')

%define variable for default matlab plot color
matlabBlue   = [ 0       0.4470  0.7410 ];
matlabRed    = [ 0.8500  0.3250  0.0980 ];
matlabPurple = [ 0.4940  0.1840  0.5560 ];

%% -------IMPORT TEST DATA-------------------------------------------------

dataFile = 'nou9.csv';   %nou5 theta2,  nou9 theta1,  nou10.csv x

data = csvread( dataFile, 0, 0);

if 1
  dataStart = 616;
  dataEnd   = length(data);
else
  dataStart = 200;
  dataEnd   = length(data);
end

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%set tEnd = 0 to include all data
tEnd = 3;
if tEnd > 0
  t = t( 1:length( t(t<tEnd) ) );
end

%-------measured--------------------------------------

%angle of pendulum 1
theta1     = data(dataStart:length(t)+dataStart-1,2);

%angle of pendulum 2
theta2     = data(dataStart:length(t)+dataStart-1,3);

%position of cart
x          = data(dataStart:length(t)+dataStart-1,4);

%velocity of pendulum 1
theta1_dot = data(dataStart:length(t)+dataStart-1,5);

%velocity of pendulum 2
theta2_dot = data(dataStart:length(t)+dataStart-1,6);

%velocity of cart
x_dot      = data(dataStart:length(t)+dataStart-1,7);

%velocity of cart
u          = data(dataStart:length(t)+dataStart-1,8);

x1 = theta1;
x2 = theta2;
x3 = x;
x4 = theta1_dot;
x5 = theta2_dot;
x6 = x_dot;


%% -------QUANTIZATION MODEL-----------------------------------------------

%smooth
smoothness = 20;
x1Smooth = smooth(x1, smoothness);

%quantize
delta1 = 0.00314;
x1Quant = delta1*floor(x1Smooth./delta1 + 1/2);

%smooth
smoothness = 15;
x3Smooth = smooth(x3, smoothness);

%quantize
delta2 = .000088;
x3Quant = delta2*floor(x3Smooth./delta2 + 1/2);

%attempt to use quantization model to de-quantize mesurements
% j = 0;
% sgn = 1;
% x1Smooth(1) = x(1);
% for i = 2:length(x1)
%   if      x1(i) > x1(i-1)
%     sgn =  1;
%     j = 0;
%   elseif x1(i) <  x1(i-1)
%     sgn = -1;
%     j = 0;
%   elseif x1(i) == x1(i-1)
%     j = j+1;
%   end
%   
%   if     sgn > 0
%     x1Smooth(i) = x1(i)   + delta*j/(j+1);
%   elseif sgn < 0
%     x1Smooth(i) = x1(i-j+1) - delta*j/(j+1);
%   end
% end

%% -------PLOT-------------------------------------------------------------

h_quantizationProblem = figure;
plot( t, x1, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')

h_quantizationProblemModel = figure;
plot( t, x1, 'linewidth', 1.5 )
hold on
plot( t, x1Smooth, 'linewidth', 1.5 )
scatter( t, x1Quant, 100, '.', 'cdata', [ 0 .56 0 ] )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')
axis([ 0.9557 1.6127 -0.0262  0.0110 ])
legend( 'Original Signal',           ...
        'Smoothed Signal',           ...
        'Smoothed Signal Quantized', ...
        'location', 'southeast'      )


if 0
figure
plot( t, x3, 'linewidth', 1.5 )
hold on
plot( t, x3Smooth, 'linewidth', 1.5 )
scatter( t, x3Quant, 100, '.', 'cdata', [ 0 .56 0 ] )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$x$ [m]')
%axis([ 0.9557 1.6127 -0.0262  0.0110 ])
legend( 'Original Signal',           ...
        'Smoothed Signal',           ...
        'Smoothed Signal Quantized', ...
        'location', 'southeast'      )
end

%% ----------SAVE PLOT-----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  %%
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  for jj = 1:1:2
    switch jj
    case 1
        figHandle=h_quantizationProblem;
        fileName='quantizationProblem';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 2
        figHandle=h_quantizationProblemModel;
        fileName='quantizationProblemModel';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end
