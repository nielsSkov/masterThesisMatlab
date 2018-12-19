clear all; close all; clc                                                  %#ok<CLALL>

cd ~/syncDrive/uni/thesis/matlab/parameterEstimation/pendulumEstimation;

%add path to pendulum simulation and relevant data
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/senseTool')
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/pend1test')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/pend2test')

run('latexDefaults.m')

%%------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

%set to 0 for manual tuning
sense = 1;

%choos weather or not to iterate over data with different initial points
itrAll = 0;

%choose which pendulum to estimate
estP1 = 1;

%initial guess
if estP1
  b_p_c = 0.0040053;              % pendulum 1 coulomb friction   [N m]
  b_p_v = 0.00045821;             % pendulum 1 viscous friction   [N m s]
  m = .2186;           estL = 0;
  %l = 0.3235 -.00658; estL = 1;
else
  b_p_c = 0.00567;                % pendulum 2 coulomb friction   [N m]
  b_p_v = 0.00010;                % pendulum 2 viscous friction   [N m s]
  %m = .2510+.0132;    estL = 0;
  %l = .2   -.000;     estL = 1;
  estL = -1;
end

%     0.0057
%     0.0001
% m   +.015
% l   0.2006

%this: %02i means two digit integer with leading zeros
dataFilePend1 = 'test1pend1.csv';
dataFilePend2 = 'test1pend2.csv';

dataPend1 = csvread( dataFilePend1, 0, 0);
dataPend2 = csvread( dataFilePend2, 0, 0);

%calculating number of iterations
if estP1
  period  = 267;  % [samples]
else
  period  = 138;
end

if estP1
  %nrOfItr = floor(length(dataPend1)/period) -10;
  nrOfItr = 3;
else
  %nrOfItr = floor(length(dataPend2)/period) -10;
  nrOfItr = 1;
end

if itrAll
  finalItr = 3;
else
  finalItr = nrOfItr;
end

b_p_c_save = zeros(nrOfItr,1);
b_p_v_save = zeros(nrOfItr,1);

%running estimation across data
for i = nrOfItr:-1:finalItr
  
  %for cropping test data
  if estP1
    dataStart = i*period;
  else
    dataStart = period*3;
  end

  %choose initial condition in data at high velocity (ca 4 rad s^-1)
  if estP1
    while abs(dataPend1(dataStart,3)) > 0
      dataStart = dataStart-1;
    end
    dataEnd   = dataStart+2500+7000;
  else
    while abs(dataPend2(dataStart,3)) > 0
      dataStart = dataStart-1;
    end
    dataEnd    = 6000;
  end
  
  if estP1
    %time vector
    t = ( dataPend1(dataStart:dataEnd,1)-dataPend1(dataStart,1) );

    %input vector
    u = zeros(size(t)); %no input

    %output vector
    y = dataPend1(dataStart:dataEnd,2);      %angle of pendulum

    %velocity
    y_dot = dataPend1(dataStart:dataEnd,3);  %velocity of pendulum (not used)
  else
    %time vector
    t = ( dataPend2(dataStart:dataEnd,1)-dataPend2(dataStart,1) );

    %input vector
    u = zeros(size(t)); %no input

    %output vector
    y = dataPend2(dataStart:dataEnd,2);      %angle of pendulum

    %velocity
    y_dot = dataPend2(dataStart:dataEnd,3);  %velocity of pendulum (not used)
  end
  
  %input
  uin = [ t u ];

  %use previous estimate as initial guess
%   if i < nrOfItr
%     b_p_c = b_p_c_save(i+1);
%     b_p_v = b_p_v_save(i+1);
%   end
  
  if estL == 1
    par0 = [ b_p_c b_p_v l ]  %set initial parameters for simulation
  elseif estL == 0
    par0 = [ b_p_c b_p_v m ]  %set initial parameters for simulation
  else
    par0 = [ b_p_c b_p_v ]    %set initial parameters for simulation
  end

  %initial values from start of data
  theta_0     = y(1);
  theta_dot_0 = y_dot(1);

  %%-------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM ------------

  %simulation of initial parameters
  Ynew = sim_pendulum( u, t, par0 );

  %close all; plot(t,y); hold on; plot(t,Ynew)


  %%------------- USING sensetool FOR PARAMETER ESTIMATION ----------------

  figure

  if sense

    %making sure u and y is a column vector
    u = u(:);
    y = y(:);

    process='_pendulum';

    save meas_pendulum t u y %creating meas'TestName'

    run mainest.m

    %result of current estimate
    b_p_c = pare(1);
    b_p_v = pare(2);

  else
    plot(t,y); hold on; plot(t,Ynew)
    grid on, grid minor
  end
  
  ax_lines = get(gca, 'Children');

  est  = ax_lines(1).YData';
  meas = ax_lines(2).YData';

  figure(2)
  
  %close all figures other than the accumulated results matrix figure
  all_figs = findobj(0, 'type', 'figure');
  delete(setdiff(all_figs, 2));

  if itrAll
    subplot(8,5,i)
  end
  plot(t,meas), hold on
  plot(t,est)
  if ~itrAll
    grid on
    grid minor
    xlabel('$t$ [s]')
    ylabel('$\theta$ [rad]')
    legend('Measured', 'Estimated', 'location', 'southeast')
  end

  b_p_c_save(i) = b_p_c;
  b_p_v_save(i) = b_p_v;
end



%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  for jjj = 1:1
    switch jjj
    case 1
        figHandle=gcf;
        fileName='pendulum2Est';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end