clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/testResults

addpath('~/syncDrive/uni/thesis/matlab/testResults/data/swingUpAndCatch')
addpath('~/syncDrive/uni/thesis/matlab/testResults/data/slidingMode')
addpath('~/syncDrive/uni/thesis/matlab/testResults/data/swingUp')

run('latexDefaults.m')

run('~/syncDrive/uni/thesis/matlab/cartPendulum/initCartPendulum.m')

%x-vector for friction lookup
xx = (.05:.01:.72)';

%friction lookup tables
pp = [ 2.0599, 2.0662, 2.1381, 2.1714, 2.1948, 2.2462, 2.2906, 2.3641, ...
      2.4541, 2.5419, 2.6354, 2.7466, 2.8576, 2.9494, 3.0025, 3.0104, ...
      3.0008, 2.9567, 2.8189, 2.6462, 2.4794, 2.3163, 2.1865, 2.0951, ...
      2.0488, 2.0721, 2.0967, 2.1510, 2.2220, 2.3104, 2.3658, 2.4560, ...
      2.5617, 2.7070, 2.8373, 2.9427, 3.0279, 3.1276, 3.1694, 3.1450, ...
      3.0841, 2.9708, 2.8381, 2.6918, 2.5490, 2.4321, 2.4032, 2.3836, ...
      2.4188, 2.5065, 2.6558, 2.8007, 2.9618, 3.0691, 3.1635, 3.2093, ...
      3.2171, 3.1765, 3.1086, 3.0108, 2.9393, 2.9058, 2.8899, 2.8902, ...
      2.8996, 2.9615, 2.9700, 3.0784 ];

mm = [ 5.6263, 5.4987, 5.1417, 4.9257, 4.6487, 4.3322, 4.0786, 3.8225, ...
      3.5715, 3.3112, 3.0779, 2.9407, 2.8604, 2.8355, 2.8457, 2.9103, ...
      3.0284, 3.1653, 3.3837, 3.6218, 3.8165, 3.9902, 4.1001, 4.1013, ...
      4.0578, 3.8796, 3.6658, 3.4336, 3.1961, 2.9678, 2.8269, 2.6447, ...
      2.4937, 2.3306, 2.1720, 2.0713, 1.9899, 1.9119, 1.9537, 2.0036, ...
      2.1147, 2.2597, 2.4044, 2.5582, 2.6746, 2.7244, 2.7459, 2.7200, ...
      2.6334, 2.5232, 2.4298, 2.3751, 2.3673, 2.3480, 2.3565, 2.4114, ...
      2.4775, 2.5494, 2.6026, 2.6170, 2.6656, 2.6750, 2.7167, 2.7325, ...
      2.7000, 2.6817, 2.7051, 2.5191 ];

%///////DATA IMPORT////////////////////////////////////////////////////////
%//
data1_1 = csvread('swing1.csv');      %<--falls short
%data1 = csvread('swing1_p008.csv');  %<--overshoots
%data1 = csvread('swing1_p005.csv');  %<--close
%data1 = csvread('swing1_p006.csv');  %<--closer
data1_2 = csvread('swing1_p007.csv'); %<--it's a beauty

%data2_1 = csvread('slide1.csv');     %<--nice onesided @ t = [44 60]
%data2 = csvread('slide2.csv');       %
%data2 = csvread('slide3.csv');       %
%data2 = csvread('slide4.csv');       %
data2_2 = csvread('slide5.csv');      %<--better example of EKF problem
%data2 = csvread('slide6.csv');       %
%data2 = csvread('slide7.csv');       %
%data2_2 = csvread('slide8.csv');     %<--example of EKF problem
%data2 = csvread('slide9.csv');       %
data2_1 = csvread('slide10.csv');     %<--beautiful restabilization in 2*pi

%data3 = csvread('swNsl1.csv');       %
%data3 = csvread('swNsl2.csv');       %
%data3 = csvread('swNsl3.csv');       %
data3 = csvread('swNsl4.csv');        %<--this is nice  (no x drift)
%data3 = csvread('swNsl5.csv');       %

%//
%//////////////////////////////////////////////////////////////////////////

testToRun = 5;

for i = testToRun
  if i == 1
    dataNr    = 1;
    data      = data1_1;
    dataStart = 1;
    dataEnd   = 3151;
  elseif i == 2
    dataNr    = 2;
    data      = data1_2;
    dataStart = 1;
    dataEnd   = length(data);
  elseif i == 3
    dataNr    = 3;
    data      = data2_1;
    dataStart = 5187;
    dataEnd   = 12270;
  elseif i == 4
    dataNr    = 4;
    data      = data2_2;
    dataStart = 1;
    dataEnd   = length(data);
  elseif i == 5
    dataNr    = 5;
    data      = data3;
    dataStart = 1;
    dataEnd   = length(data);
  end

  t         = data( dataStart:dataEnd,  1 )-data(dataStart,1); %start @ t=0
  x1        = data( dataStart:dataEnd,  2 );
  x1Wrap    = data( dataStart:dataEnd,  3 );
  x1_FIR    = data( dataStart:dataEnd,  4 );
  x2        = data( dataStart:dataEnd,  5 );
  x2_FIR    = data( dataStart:dataEnd,  6 );
  x3        = data( dataStart:dataEnd,  7 );
  x3_FIR    = data( dataStart:dataEnd,  8 );
  x4        = data( dataStart:dataEnd,  9 );
  x4_FIR    = data( dataStart:dataEnd, 10 );
  ia_noComp = data( dataStart:dataEnd, 11 );
  ia        = data( dataStart:dataEnd, 12 );
  B_c_c     = data( dataStart:dataEnd, 13 );

  %check that time is linear
%   figure
%   plot(t)
%   title('time')

  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  if i == 1 %//////////////////////////////////////////////////////////////
  
    endTime = 20;
    
    h_theta = figure;
    plot( t, x1, 'lineWidth', 1.5 )
    hold on
    %plot( t, x1_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\theta$ [ rad ]')
    ax = gca; ax.YDir = 'reverse'; %reverse y-axis for angle
    grid on, grid minor
    xlim([ 0 endTime ])
    yPI = 1; xPI = 0; run('piAxes.m')
    ylim([ 0 2*pi])
    
    h_phase = figure;
    %plot( x1, x3, 'lineWidth', 1.5 )
    %hold on
    plot( x1_FIR, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$\theta$ [ rad ]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    yPI = 1; xPI = 1; run('piAxes.m')
    axis equal
    axis([-3*pi 5*pi -3.6*pi 3.6*pi])

    h_x = figure;
    plot( t, x2, 'lineWidth', 1.5 )
    hold on
    %plot( t, x2_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$x$ [ m ]')
    grid on, grid minor
    xlim([ 0 endTime ])

    h_thetaDot = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    %plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    yPI = 1; xPI = 0; run('piAxes.m')

    h_thetaDotBiasZoom = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ m ]')
    grid on, grid minor
    axis([ 0 1.0038 -1.3446 3.0823 ]) %zoom on bias
    %yPI = 1; xPI = 0; run('piAxes.m')
    legend( 'Kalman Filter',        ...
            'FIR Filter',           ...
            'location', 'southeast'   )

    h_xDot = figure;
    plot( t, x4, 'lineWidth', 1.5 )
    hold on
    %plot( t, x4_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{x}$ [ m $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([ 0 endTime ])

    h_ia = figure;
    plot( t, ia )
    hold on
    %plot( t, ia_noComp, 'lineWidth', 1.5)
    %
    ia_rms = zeros(size(t));
    windowSize = 151;
    for j = 1:length(t)-windowSize
      ia_rms(j) = rms( ia(j:j+windowSize) );
    end
    plot(t, ia_rms, 'color', [ 0 .6 0 ], 'lineWidth', 1.5)
    i_max = 4.58;
    xlim([ min(t)      max(t)     ])
    ylim([ min(ia)-.5  max(ia)+.5 ])
    plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$i_a$ [ A ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    legend( 'Motor Current',          ...
            'moving RMS of $i_a$',    ...
            'Max Continuous Current', ...
            'location', 'southeast'   )

    %difference in energy with cooredinate system fixed at pivot point
    J = m*(l^2);
    E_delta = (1/2)*J*(x3.^2) + m*g*l*(cos(x1) - 1);
    E_delta_FIR = (1/2)*J*(x3_FIR.^2) + m*g*l*(cos(x1_FIR) - 1);
    
    h_Edelta = figure;
    plot( t, E_delta, 'lineWidth', 1.5 )
    hold on
    %plot( t, E_delta_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$E_\Delta$ [ J ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    
    if 0
      h_Bcc_x = figure;
      plot(xx-.38, mm, 'linewidth', 1.5)
      hold on
      plot(xx-.38, pp, 'linewidth', 1.5)
      %
      scatter( x2, B_c_c, 40, '.', 'cdata', [0.4940 0.1840 0.5560])
      xlabel('$x$ [m]')
      ylabel('$b_{c,c}$ [ N ]')
      grid on, grid minor
    end
    
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  elseif i == 2 %//////////////////////////////////////////////////////////
    
    endTime = 20;
    
    h_theta = figure;
    plot( t, x1, 'lineWidth', 1.5 )
    hold on
    %plot( t, x1_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\theta$ [ rad ]')
    ax = gca; ax.YDir = 'reverse'; %reverse y-axis for angle
    grid on, grid minor
    xlim([ 0 endTime ])
    yPI = 1; xPI = 0; run('piAxes.m')
    ylim([ 0 2*pi])
    
    h_phase = figure;
    %plot( x1, x3, 'lineWidth', 1.5 )
    %hold on
    plot( x1_FIR, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$\theta$ [ rad ]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    yPI = 1; xPI = 1; run('piAxes.m')
    axis equal
    axis([-3*pi 5*pi -3.6*pi 3.6*pi])

    h_x = figure;
    plot( t, x2, 'lineWidth', 1.5 )
    hold on
    %plot( t, x2_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$x$ [ m ]')
    grid on, grid minor
    xlim([ 0 endTime ])

    h_thetaDot = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    %plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    yPI = 1; xPI = 0; run('piAxes.m')

    h_thetaDotBiasZoom = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ m ]')
    grid on, grid minor
    axis([ 0 1.0038 -1.0446 3.4823 ]) %zoom on bias
    %yPI = 1; xPI = 0; run('piAxes.m')
    legend( 'Kalman Filter',        ...
            'FIR Filter',           ...
            'location', 'southeast'   )

    h_xDot = figure;
    plot( t, x4, 'lineWidth', 1.5 )
    hold on
    %plot( t, x4_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{x}$ [ m $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([ 0 endTime ])

    h_ia = figure;
    plot( t, ia )
    hold on
    %plot( t, ia_noComp, 'lineWidth', 1.5)
    %
    ia_rms = zeros(size(t));
    windowSize = 151;
    for j = 1:length(t)-windowSize
      ia_rms(j) = rms( ia(j:j+windowSize) );
    end
    plot(t, ia_rms, 'color', [ 0 .6 0 ], 'lineWidth', 1.5)
    i_max = 4.58;
    xlim([ min(t)      max(t)     ])
    ylim([ min(ia)-.5  max(ia)+.5 ])
    plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$i_a$ [ A ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    legend( 'Motor Current',          ...
            'moving RMS of $i_a$',    ...
            'Max Continuous Current', ...
            'location', 'southeast'   )
    
    if 0
      h_Bcc_x = figure;
      plot(xx-.38, mm, 'linewidth', 1.5)
      hold on
      plot(xx-.38, pp, 'linewidth', 1.5)
      %
      scatter( x2, B_c_c, 40, '.', 'cdata', [0.4940 0.1840 0.5560])
      xlabel('$x$ [m]')
      ylabel('$b_{c,c}$ [ N ]')
      grid on, grid minor
    end

    %difference in energy with cooredinate system fixed at pivot point
    J = m*(l^2);
    E_delta = (1/2)*J*(x3.^2) + m*g*l*(cos(x1) - 1);
    E_delta_FIR = (1/2)*J*(x3_FIR.^2) + m*g*l*(cos(x1_FIR) - 1);
    
    h_Edelta = figure;
    plot( t, E_delta, 'lineWidth', 1.5 )
    hold on
    %plot( t, E_delta_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$E_\Delta$ [ J ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  elseif i == 3 %//////////////////////////////////////////////////////////
    
    endTime = t(end)-1.1;
    
    h_theta = figure;
    %plot( t, x1-2*pi, 'lineWidth', 1.5 )  %corrected for 2*pi offset
    hold on
    plot( t, x1_FIR-2*pi, 'lineWidth', 1.5 )  %corrected for 2*pi offset
    xlabel('$t$ [s]')
    ylabel('$\theta$ [ rad ]')
    %ax = gca; ax.YDir = 'reverse'; %reverse y-axis for angle
    grid on, grid minor
    xlim([0 endTime])
    yPI = 0; xPI = 0; run('piAxes.m')
    %ylim([ -pi pi])

    h_x = figure;
    plot( t, x2, 'lineWidth', 1.5 )
    hold on
    %plot( t, x2_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$x$ [ m ]')
    grid on, grid minor
    xlim([0 endTime])

    h_thetaDot = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([0 endTime])
    yPI = 0; xPI = 0; run('piAxes.m')
    legend( 'Kalman Filter',        ...
            'FIR Filter',           ...
            'location', 'southeast'   )

    h_thetaDotBiasZoom = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ m ]')
    grid on, grid minor
    axis([ 34.7353 38.2611 -0.2351 0.2372 ]) %zoom on bias
    %yPI = 1; xPI = 0; run('piAxes.m')
    legend( 'Kalman Filter',        ...
            'FIR Filter',           ...
            'location', 'southeast'   )

    h_xDot = figure;
    plot( t, x4, 'lineWidth', 1.5 )
    hold on
    %plot( t, x4_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{x}$ [ m $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([0 endTime])

    h_ia = figure;
    plot( t, ia )
    hold on
    %plot( t, ia_noComp, 'lineWidth', 1.5)
    %
    ia_rms = zeros(size(t));
    windowSize = 151;
    for j = 1:length(t)-windowSize
      ia_rms(j) = rms( ia(j:j+windowSize) );
    end
    plot(t, ia_rms, 'color', [ 0 .6 0 ], 'lineWidth', 1.5)
    i_max = 4.58;
    xlim([ min(t)      max(t)     ])
    ylim([ min(ia)-.5  max(ia)+.5 ])
    plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$i_a$ [ A ]')
    grid on, grid minor
    xlim([0 endTime])
    legend( 'Motor Current',          ...
            'moving RMS of $i_a$',    ...
            'Max Continuous Current', ...
            'location', 'southeast'   )

    if 0
      h_Bcc_x = figure;
      plot(xx-.38, mm, 'linewidth', 1.5)
      hold on
      plot(xx-.38, pp, 'linewidth', 1.5)
      %
      scatter( x2, B_c_c, 40, '.', 'cdata', [0.4940 0.1840 0.5560])
      xlabel('$x$ [m]')
      ylabel('$b_{c,c}$ [ N ]')
      grid on, grid minor
    end
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  elseif i == 4 %//////////////////////////////////////////////////////////
    
    endTime = t(end);
    
    h_states = figure;
    
    subplot(4,1,1)
    %plot( t, x1-4*pi, 'lineWidth', 1.5 )  %corrected for 4*pi offset
    hold on
    plot( t, x1_FIR-4*pi, 'lineWidth', 1.5 )  %corrected for 4*pi offset
    xlabel('$t$ [s]')
    ylabel('$\theta$ [ rad ]')
    %ax = gca; ax.YDir = 'reverse'; %reverse y-axis for angle
    grid on, grid minor
    xlim([0 endTime])
    yPI = 0; xPI = 0; run('piAxes.m')
    %ylim([ -pi pi])

    subplot(4,1,2)
    plot( t, x2, 'lineWidth', 1.5 )
    hold on
    %plot( t, x2_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$x$ [ m ]')
    grid on, grid minor
    xlim([0 endTime])

    subplot(4,1,3)
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([0 endTime])
    yPI = 0; xPI = 0; run('piAxes.m')
    legend( 'Kalman Filter',        ...
            'FIR Filter',           ...
            'location', 'northeast'   )

    subplot(4,1,4)
    plot( t, x4, 'lineWidth', 1.5 )
    hold on
    plot( t, x4_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{x}$ [ m $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([0 endTime])
    legend( 'Kalman Filter',        ...
            'FIR Filter',           ...
            'location', 'northeast'   )

  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  %////////////////////////////////////////////////////////////////////////
  elseif i == 5 %//////////////////////////////////////////////////////////
    
     endTime = 15;%t(end)-1.1;
    
    h_theta = figure;
    plot( t, x1, 'lineWidth', 1.5 )
    hold on
    %plot( t, x1_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\theta$ [ rad ]')
    ax = gca; ax.YDir = 'reverse'; %reverse y-axis for angle
    grid on, grid minor
    xlim([ 0 endTime ])
    yPI = 1; xPI = 0; run('piAxes.m')
    ylim([ -(1/5)*pi 2*pi-(1/5)*pi ])
    
    h_phase = figure;
    %plot( x1, x3, 'lineWidth', 1.5 )
    %hold on
    plot( x1_FIR, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$\theta$ [ rad ]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    yPI = 1; xPI = 1; run('piAxes.m')
    axis equal
    axis([-3*pi 5*pi -3.6*pi 3.6*pi])

    h_x = figure;
    plot( t, x2, 'lineWidth', 1.5 )
    hold on
    %plot( t, x2_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$x$ [ m ]')
    grid on, grid minor
    xlim([ 0 endTime ])

    h_thetaDot = figure;
    plot( t, x3, 'lineWidth', 1.5 )
    hold on
    %plot( t, x3_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{\theta}$ [ rad $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    yPI = 1; xPI = 0; run('piAxes.m')

    h_xDot = figure;
    plot( t, x4, 'lineWidth', 1.5 )
    hold on
    %plot( t, x4_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$\dot{x}$ [ m $\cdot$ s$^{-1}$ ]')
    grid on, grid minor
    xlim([ 0 endTime ])

    h_ia = figure;
    plot( t, ia )
    hold on
    %plot( t, ia_noComp, 'lineWidth', 1.5)
    %
    ia_rms = zeros(size(t));
    windowSize = 151;
    for j = 1:length(t)-windowSize
      ia_rms(j) = rms( ia(j:j+windowSize) );
    end
    plot(t, ia_rms, 'color', [ 0 .6 0 ], 'lineWidth', 1.5)
    i_max = 4.58;
    xlim([ min(t)      max(t)     ])
    ylim([ min(ia)-.5  max(ia)+.5 ])
    plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$i_a$ [ A ]')
    grid on, grid minor
    xlim([ 0 endTime ])
    legend( 'Motor Current',          ...
            'moving RMS of $i_a$',    ...
            'Max Continuous Current', ...
            'location', 'southeast'   )

    %difference in energy with cooredinate system fixed at pivot point
    J = m*(l^2);
    E_delta = (1/2)*J*(x3.^2) + m*g*l*(cos(x1) - 1);
    E_delta_FIR = (1/2)*J*(x3_FIR.^2) + m*g*l*(cos(x1_FIR) - 1);
    
    h_Edelta = figure;
    plot( t, E_delta, 'lineWidth', 1.5 )
    hold on
    %plot( t, E_delta_FIR, 'lineWidth', 1.5 )
    xlabel('$t$ [s]')
    ylabel('$E_\Delta$ [ J ]')
    grid on, grid minor
    xlim([ 0 endTime ])

  end

end




%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  
  fileTypeOrig = "fig";
  
  if dataNr == 1
    testID='_swing_p00';
  elseif dataNr == 2
    testID='_swing_p08';
  elseif dataNr == 3
    testID='_slide';
  elseif dataNr == 4
    testID='_slideEKFproblem';
  elseif dataNr == 5
    testID='_swingNslide';
  end

  for jj = 1:1:8
    if dataNr == 4
      figHandle=h_states;
      fileName=strcat('states',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      return
    else
    switch jj
    case 1
      figHandle=h_theta;
      fileName=strcat('theta',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 2
      figHandle=h_x;
      fileName=strcat('x',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 3
      figHandle=h_thetaDot;
      fileName=strcat('thetaDot',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 4
      figHandle=h_xDot;
      fileName=strcat('xDot',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 5
      if dataNr < 5
        figHandle=h_thetaDotBiasZoom;
        fileName=strcat('thetaDotBiasZoom',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 6
      if (dataNr == 1) || (dataNr == 2) || (dataNr == 5)
        figHandle=h_phase;
        fileName=strcat('phase',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    case 7
      figHandle=h_ia;
      fileName=strcat('ia',testID);
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 8
      if (dataNr == 1) || (dataNr == 2) || (dataNr == 5)
        figHandle=h_Edelta;
        fileName=strcat('Edelta',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
      end
    end
    end
  end
end
