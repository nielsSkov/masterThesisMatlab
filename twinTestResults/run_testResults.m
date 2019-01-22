clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinTestResults

addpath('~/syncDrive/uni/thesis/matlab/twinTestResults/data/swingUp')
addpath('~/syncDrive/uni/thesis/matlab/twinTestResults/data/catch')

run('latexDefaults.m')

run('~/syncDrive/uni/thesis/matlab/twin/initTwin.m')

%define variable for default matlab plot color
matlabBlue   = [ 0     0.4470 0.7410 ];
matlabRed    = [ 0.85  0.325  0.098  ];
matlabPurple = [ 0.494 0.184  0.556  ];


%///////DATA IMPORT////////////////////////////////////////////////////////
%//

%select test Nr
testNr = 4;      % 1 - swing-up
                 % 2 - catch
                 % 3 - swing-up and catch attempt
                 % 4 - Kalman filter with LQR

%select correct test file based on test number
if testNr == 1
  dataFile = 'sw2.csv';
elseif testNr == 2
  dataFile = 'c6.csv';
elseif testNr == 3
  dataFile = 's33.csv';
elseif testNr == 4
  dataFile = 'c6.csv';
end

data = csvread( dataFile, 0, 0);

if testNr == 1
  dataStart = 1;
  dataEnd   = length(data)-440;
elseif testNr == 2
  dataStart = 1000;
  dataEnd   = length(data)-3020;
elseif testNr == 3
  dataStart = 1;
  dataEnd   = length(data)-65;
elseif testNr == 4
  dataStart = 1;
  dataEnd   = length(data);
end


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

%input signal
u            = data(dataStart:dataEnd,8);

%-------From Kalman Filter----------------------------

%KF angle of pendulum 1
theta1KF     = data(dataStart:dataEnd,9);

%KF angle of pendulum 2
theta2KF     = data(dataStart:dataEnd,10);

%KFposition of cart
xKF          = data(dataStart:dataEnd,11);

%KF velocity of pendulum 1
theta1_dotKF = data(dataStart:dataEnd,12);

%KF velocity of pendulum 2
theta2_dotKF = data(dataStart:dataEnd,13);

%KF velocity of cart
x_dotKF      = data(dataStart:dataEnd,14);


%calculate ia from u
ia = u.*r/k_tau;

%store measured states
x1 = theta1;
x2 = theta2;
x3 = x;
x4 = theta1_dot;
x5 = theta2_dot;
x6 = x_dot;

%store used filter states
x1K = theta1KF;
x2K = theta2KF;
x3K = xKF;
x4K = theta1_dotKF;
x5K = theta2_dotKF;
x6K = x_dotKF;

%inertias
J1 = m1*(l1^2);
J2 = m2*(l2^2);

%local energy difference with fixed coordinate system
E_delta1 = (1/2)*J1*(x4.^2) + m1*g*l1*(cos(x1) - 1);
E_delta2 = (1/2)*J2*(x5.^2) + m2*g*l2*(cos(x2) - 1);

E_delta1MA = (1/2)*J1*(x4K.^2) + m1*g*l1*(cos(x1K) - 1);
E_delta2MA = (1/2)*J2*(x5K.^2) + m2*g*l2*(cos(x2K) - 1);

%sample time [s]
Ts = 0.0067;

%calculating moving RMS of ia
ia_rms = zeros(size(t));

windowSize = ceil(1/Ts);  %= 1 s long window
for i = 1:length(t)-windowSize
  ia_rms(i) = rms( ia(i:i+windowSize) );
end

%//
%//////////////////////////////////////////////////////////////////////////


if testNr == 1
  
  %plot all states
  h_theta = figure;
  plot( t, x1K, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x2K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\theta$ [rad]')
  xlim([min(t) max(t)-1.2])
  legend( '$\theta_1$', '$\theta_2$', 'location', 'southwest' )
  
  h_x = figure;
  plot( t, x3K, 'linewidth', 1.5, 'color', matlabBlue )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$x$ [m]')
  xlim([min(t) max(t)-1.2])

  h_thetaDot = figure;
  plot( t, x4, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x5, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
  %yPI = 1; xPI = 0; run('piAxes.m')
  xlim([min(t) max(t)-1.2])
  legend( '$\dot{\theta}_1$', '$\dot{\theta}_2$', 'location', 'southeast' )
  
  h_xDot = figure;
  plot( t, x6K, 'linewidth', 1.5, 'color', matlabBlue )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
  xlim([min(t) max(t)-1.2])

  %plot armature current
  h_ia = figure;
  plot( t, ia, 'linewidth', 1.5 )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$i_a$ [A]')
  hold on
  plot( t, ia_rms, 'color', [ 0 .6 0 ], 'linewidth', 1.5 )
  i_max = 4.58;
  xlim([min(t) max(t)-1.2])
  ylim([min(ia)-.5 max(ia)+.5])
  plot(xlim,[i_max i_max], 'linewidth', 1.5, 'color', matlabRed )
  legend( 'Motor Current',          ...
          'Moving Average RMS of $i_a$',    ...
          'Max Continuous Current', ...
          'location', 'southeast'   )

  %plot trajectories in theta-plane
  h_phase = figure;
  plot( x1K(1:end-164), x4K(1:end-164),          ...
        'linewidth', 1.5, 'color', matlabBlue     )
  hold on
  plot( x2K(1:end-164), x5K(1:end-164),          ...
        'linewidth', 1.5, 'color', matlabRed      )
  %grid on
  yPI = 1; xPI = 1; run('piAxes.m')
  axis equal
  theta2Lim = max( abs(min(theta2_dot)), max(theta2_dot) );
  axis([-3*pi 5*pi -theta2Lim-.5 theta2Lim+.5])
  xlabel('$\theta$ [rad]')
  ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
  legend( '$\theta_1$', '$\theta_2$', 'location', 'southeast' )
  aspectRatioPhasePlot = pbaspect;
  grid on, grid minor

  %plot difference in energy over time
  h_Edelta = figure;
  plot( t, E_delta1, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, E_delta2, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$E_\Delta$ [J]')
  xlim([min(t) max(t)-1.2])
  pbaspect(aspectRatioPhasePlot)
  legend( '$E_{\Delta_1}$', '$E_{\Delta_2}$', 'location', 'southeast' )

elseif testNr == 2
  
  %plot all states
  h_theta = figure;
  plot( t, x1K, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x2K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\theta$ [rad]')
  xlim([min(t) max(t)-1.2])
  legend( '$\theta_1$', '$\theta_2$', 'location', 'southeast' )
  
  h_x = figure;
  plot( t, x3K, 'linewidth', 1.5, 'color', matlabBlue )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$x$ [m]')
  xlim([min(t) max(t)-1.2])

  h_thetaDot = figure;
  plot( t, x4K, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x5K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
  %yPI = 1; xPI = 0; run('piAxes.m')
  xlim([min(t) max(t)-1.2])
  legend( '$\dot{\theta}_1$', '$\dot{\theta}_2$', 'location', 'southeast' )
  
  h_xDot = figure;
  plot( t, x6, 'linewidth', 1.5, 'color', matlabBlue )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
  xlim([min(t) max(t)-1.2])

  %plot armature current
  h_ia = figure;
  plot( t, ia, 'linewidth', 1.5 )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$i_a$ [A]')
  hold on
  plot( t, ia_rms, 'color', [ 0 .6 0 ], 'linewidth', 1.5 )
  i_max = 4.58;
  xlim([min(t) max(t)-1.2])
  ylim([min(ia)-.5 max(ia)+.5])
  plot(xlim,[i_max i_max], 'linewidth', 1.5, 'color', matlabRed )
  legend( 'Motor Current',          ...
          'Moving Average RMS of $i_a$',    ...
          'Max Continuous Current', ...
          'location', 'southeast'   )

elseif testNr == 3
  
  %plot all states
  h_theta = figure;
  plot( t, x1K, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x2K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\theta$ [rad]')
  xlim([min(t) max(t)-1.2])
  legend( '$\theta_1$', '$\theta_2$', 'location', 'southwest' )
  
  h_x = figure;
  plot( t, x3K, 'linewidth', 1.5, 'color', matlabBlue )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$x$ [m]')
  xlim([min(t) max(t)-1.2])

  h_thetaDot = figure;
  plot( t, x4K, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x5K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
  %yPI = 1; xPI = 0; run('piAxes.m')
  xlim([min(t) max(t)-1.2])
  legend( '$\dot{\theta}_1$', '$\dot{\theta}_2$', 'location', 'southeast' )
  
  h_xDot = figure;
  plot( t, x6K, 'linewidth', 1.5, 'color', matlabBlue )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
  xlim([min(t) max(t)-1.2])

  %plot armature current
  h_ia = figure;
  plot( t, ia, 'linewidth', 1.5 )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$i_a$ [A]')
  hold on
  plot( t, ia_rms, 'color', [ 0 .6 0 ], 'linewidth', 1.5 )
  i_max = 4.58;
  xlim([min(t) max(t)-1.2])
  ylim([min(ia)-.5 max(ia)+.5])
  plot(xlim,[i_max i_max], 'linewidth', 1.5, 'color', matlabRed )
  legend( 'Motor Current',          ...
          'Moving Average RMS of $i_a$',    ...
          'Max Continuous Current', ...
          'location', 'southeast'   )

  %plot trajectories in theta-plane
  h_phase = figure;
  plot( x1K(1:end-164), x4K(1:end-164),          ...
        'linewidth', 1.5, 'color', matlabBlue     )
  hold on
  plot( x2K(1:end-164), x5K(1:end-164),          ...
        'linewidth', 1.5, 'color', matlabRed      )
  %grid on
  yPI = 1; xPI = 1; run('piAxes.m')
  axis equal
  theta2Lim = max( abs(min(theta2_dot)), max(theta2_dot) );
  axis([-3*pi 5*pi -theta2Lim-.5 theta2Lim+.5])
  xlabel('$\theta$ [rad]')
  ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
  legend( '$\theta_1$', '$\theta_2$', 'location', 'southeast' )
  aspectRatioPhasePlot = pbaspect;
  grid on, grid minor

  %plot difference in energy over time
  h_Edelta = figure;
  plot( t, E_delta1, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, E_delta2, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$E_\Delta$ [J]')
  xlim([min(t) max(t)-1.2])
  pbaspect(aspectRatioPhasePlot)
  legend( '$E_{\Delta_1}$', '$E_{\Delta_2}$', 'location', 'southeast' )


elseif testNr == 4
  
  N = 10;

  %averaging filter with equal weights
  h = ones(1,N)*(1/N);

  in = zeros(1,N);

  x4MA = zeros(length(x4),1);

  for i = 1:length(x4)

    for j = length(in):-1:2  %shift right
      in(j) = in(j-1);
    end
    in(1) = x4(i);

    for j = 1:length(in)
      x4MA(i) = x4MA(i) + in(j)*h(j);
    end
  end
  
  N = 10;

  %averaging filter with equal weights
  h = ones(1,N)*(1/N);

  in = zeros(1,N);

  x5MA = zeros(length(x5),1);

  for i = 1:length(x5)

    for j = length(in):-1:2  %shift right
      in(j) = in(j-1);
    end
    in(1) = x5(i);

    for j = 1:length(in)
      x5MA(i) = x5MA(i) + in(j)*h(j);
    end
  end

  %plot all states
  h_theta1 = figure;
  plot( t, x1, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x1K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\theta_1$ [rad]')
  axis( [ 18.2857   21.4435   -0.0407    0.0408 ] )
  legend( 'Measurement', 'Kalman Filter', 'location', 'southeast' )
  
  h_theta2 = figure;
  plot( t, x2, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x2K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\theta_2$ [rad]')
  axis( [ 18.2857   21.4435   -0.0407    0.0408 ] )
  legend( 'Measurement', 'Kalman Filter', 'location', 'southeast' )
  
  h_x = figure;
  plot( t, x3, 'linewidth', 1.5, 'color', matlabBlue )
    hold on
  plot( t, x3K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$x$ [m]')
  axis( [ 18.2857   21.4435   -0.0925   -0.0249 ] )
  legend( 'Measurement', 'Kalman Filter', 'location', 'southeast' )

  h_theta1Dot = figure;
  plot( t, x4MA, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x4K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{\theta}_1$ [rad$\cdot$s$^{-1}$]')
  %yPI = 1; xPI = 0; run('piAxes.m')
  axis([ 17.9639   21.0156   -0.4370    0.6056 ])
  legend( 'MA Filter', 'Kalman Filter', 'location', 'southeast' )
  
  h_theta2Dot = figure;
  plot( t, x5MA, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x5K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{\theta}_2$ [rad$\cdot$s$^{-1}$]')
  %yPI = 1; xPI = 0; run('piAxes.m')
  axis([ 17.9639   21.0156   -0.5079  0.7919 ])
  legend( 'MA Filter', 'Kalman Filter', 'location', 'southeast' )
  
  h_xDot = figure;
  plot( t, x6, 'linewidth', 1.5, 'color', matlabBlue )
  hold on
  plot( t, x6K, 'linewidth', 1.5, 'color', matlabRed )
  grid on, grid minor
  xlabel('$t$ [s]')
  ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
  axis([ 20.3051   24.0119   -0.3389    0.3085 ])
  legend( 'Numerical Differentiation', 'Kalman Filter', 'location', 'southeast' )

end



%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  %%
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  if testNr == 1
    testID='Swing';
  elseif testNr == 2
    testID='Catch';
  elseif testNr == 3
    testID='SwingAttempt';
  elseif testNr == 4
    testID='KFtest';
  end
  
  for jj = 1:1:12
    switch jj
    case 1
      if testNr ~= 4
      figHandle=h_theta;
      fileName=strcat('theta',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 2
      figHandle=h_x;
      fileName=strcat('x',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 3
      if testNr ~= 4
      figHandle=h_thetaDot;
      fileName=strcat('thetaDot',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 5
      figHandle=h_xDot;
      fileName=strcat('xDot',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 6
      if testNr ~= 4
      figHandle=h_ia;
      fileName=strcat('ia',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 7
      if testNr == 1 || testNr == 3
      figHandle=h_phase;  
      fileName=strcat('phase',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 8
      if testNr == 1 || testNr == 3
      figHandle=h_Edelta;
      fileName=strcat('Edelta',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 9
      if testNr == 4
      figHandle=h_theta1;
      fileName=strcat('theta1',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 10
      if testNr == 4
      figHandle=h_theta2;
      fileName=strcat('theta2',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
     case 11
      if testNr == 4
      figHandle=h_theta1Dot;
      fileName=strcat('theta1Dot',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 12
      if testNr == 4
      figHandle=h_theta2Dot;
      fileName=strcat('theta2Dot',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    end
  end
end