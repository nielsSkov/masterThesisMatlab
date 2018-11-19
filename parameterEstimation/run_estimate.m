clear all; close all; clc                                                  %#ok<CLALL>

cd ~/syncDrive/uni/thesis/matlab/parameterEstimation;

%add path to pendulum simulation and relevant data
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/senseTool')
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest1')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest2')

%% ------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

%initializing vectors for storring results
b_ccp_vec = zeros(68,1);
b_ccm_vec = zeros(68,1);
b_cv_vec  = zeros(68,1);
M_vec     = zeros(68,1);
errn_vec  = zeros(68,1);

%-----initial guesses for first run---------
% b_c_c_p = 1.52;
% b_c_c_m = 5.18;
% b_c_v   = 9;
% M       = 5.8;

b_c_c_p =  2.07;
b_c_c_m =  5.6;
b_c_v   = 10.62;

M       =  6.28;

%load old estimates for initial guesses
loadTmp = load('estFrictionsAndErrn.mat');
b_ccp_vec_old = vertcat(loadTmp.b_ccp_vec);
b_ccm_vec_old = vertcat(loadTmp.b_ccm_vec);


%if 0 -> manual tuning,  if 1 senseTool estimation
sense = 1;
currentRow = 0;
for i = 5:72

%-----initial guesses is set to result of last estimate---------
if i > 5
%   b_c_c_p = pare(1);
%   b_c_c_m = pare(2);
%   b_c_v   = pare(3);
  b_c_c_p = b_ccp_vec_old(i-4);
  b_c_c_m = b_ccm_vec_old(i-4);
  b_c_v   = pare(3);
end

%this: %02i means two digit integer with leading zeros
dataFile = sprintf('0m%02i.csv', i);

data = csvread( dataFile, 0, 0);

%for cropping test data
dataStart = 1760;
dataEnd   = length(data)-190;

%choose initial condition in data at high velocity (ca 0.2 m s^-1)
while data(dataStart,4) < 0.2
  dataStart = dataStart+1;
end

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%setting input to zero
u = data(dataStart:dataEnd,2);

%output vector
y = data(dataStart:dataEnd,3);      %position of cart

%velocity
y_dot = data(dataStart:dataEnd,4);  %velocity of cart (not used)

%input
uin = [ t u ];

par0 = [ b_c_c_p b_c_c_m b_c_v ];%M ]  %set initial parameters for simulation

%initial value from start of data
x_0     = y(1);
x_dot_0 = y_dot(1);

%%-------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM -------------

%simulation of initial parameters
Ynew = sim_cartPendulum( u, t, par0 );

%close all; plot(t,y); hold on; plot(t,Ynew)


%% ------------- USING sensetool FOR PARAMETER ESTIMATION -----------------

if sense

  %making sure u and y is a column vector
  u = u(:);
  y = y(:);

  process='_cartPendulum';

  save meas_cartPendulum t u y %creating meas'TestName'

  subplot(14,5,i-4)

  subTitle=sprintf('x = 0m%02i', i);
  title(subTitle)
  set(gca,'FontSize',7.5)


  %subfigure offset and scale parameters
  x_offset = -.12;
  y_offset =  .055;
  x_scale  =  .05;
  y_scale  =  .00;

  %zero-indexed row/colon of figures
  currentCol = mod((i-5),5)
  if i == 5
    currentRow = 0;
  elseif currentCol == 0
    currentRow = currentRow +1
  end

  %calculate offset and specify scale for each subplot
  scaleAndPos = [ x_offset+(x_scale-.015)*currentCol ...
                  y_offset-(y_scale+.005)*currentRow  ...
                  x_scale  y_scale                   ];

  %get current position
  pos = get(gca, 'Position');

  %modify position vector
  pos = pos+scaleAndPos;

  %set new position and scale
  set(gca, 'Position', pos)

  drawnow

  %figure;
  run mainest.m
  
  set(gca,'FontSize',7.5)
  title(subTitle)
  axis off, axis tight
  drawnow

  %storring result for each iteration
  b_ccp_vec(i-4) = pare(1);
  b_ccm_vec(i-4) = pare(2);
  b_cv_vec(i-4)  = pare(3);
  %M_vec(i-4)     = pare(4);
  errn_vec(i-4)  = errn;

  %print progress
  printItr = sprintf('Iteration %i done, %i to go',i-4, 72-i);
  disp(printItr)
else
   subplot(14,5,i-4), plot(t,y); hold on; plot(t,Ynew)

  subTitle=sprintf('x = 0m%02i', i);
  title(subTitle)
  set(gca,'FontSize',7.5)

  %subfigure offset and scale parameters
  x_offset = -.12;
  y_offset =  .055;
  x_scale  =  .05;
  y_scale  =  .00;

  %zero-indexed row/colon of figures
  currentCol = mod((i-5),5)
  if i == 5
    currentRow = 0;
  elseif currentCol == 0
    currentRow = currentRow +1
  end

  %calculate offset and specify scale for each subplot
  scaleAndPos = [ x_offset+(x_scale-.015)*currentCol ...
                  y_offset-(y_scale+.005)*currentRow  ...
                  x_scale  y_scale                   ];

  %get current position
  pos = get(gca, 'Position');

  %modify position vector
  pos = pos+scaleAndPos;

  %set new position and scale
  set(gca, 'Position', pos)
  
  title(subTitle)
  axis off, axis tight
  drawnow
end


end

if sense
  save estFrictionsAndErrn b_ccp_vec b_ccm_vec b_cv_vec errn_vec
end

% loadTmp = load('estFrictions.mat')
% b_cv_vec = vertcat(loadTmp.b_cv_vec)



