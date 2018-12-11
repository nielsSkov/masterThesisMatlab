clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/filterDesignFIR

run('latexDefaults.m')

data = csvread('testForFIR.csv');

matlabBlue = [ 0 0.4470 0.7410 ];

dataStart = 780;
dataEnd   = length(data);

t         = data( dataStart:dataEnd, 1 );
theta     = data( dataStart:dataEnd, 2 );
x         = data( dataStart:dataEnd, 3 );
theta_dot = data( dataStart:dataEnd, 4 );
x_dot     = data( dataStart:dataEnd, 5 );


figure
plot(t,theta)
title('$\theta$')
%
 figure
 plot(t,x)
 title('$x$')
%
% figure
% plot(t,x_dot)
% title('$\dot{x}$')


%-------FFT of signal------------------------------------------------------
close all

Fs = 149.925;           % Sampling frequency                    
T = 1/Fs;               % Sampling period       
L = length(theta_dot);  % Length of signal

%fft
theta_dot_fft = fft(theta_dot);

%two-sided spectrum of fft
theta_dot_2sidedSpectrum = abs(theta_dot_fft/L);

%one-sided spectrum of fft
theta_dot_1sidedSpectrum          = theta_dot_2sidedSpectrum(1:L/2+1);
theta_dot_1sidedSpectrum(2:end-1) = 2*theta_dot_1sidedSpectrum(2:end-1);

f_hz  = Fs*(0:(L/2))/L;
f_rad = f_hz*2*pi;

%plot(f_rad,theta_dot_1sidedSpectrum)
%title('Single-Sided Amplitude Spectrum of $\dot{\theta}$')
%xlabel('rad $\cdot$ s $^{-1}$')
%ylabel('amplitude')

%ideal cutoff chosen @ 6.5 rad s^-1

%-------FFT design---------------------------------------------------------

%cutoff frequency [rad s^-1]
omega_c = 11.95;

%
% ideal filter:
%  |                      ^ |H(e^jw)|
%  |                      |
% 1|- - - - - - -> _______|_______
%  |              |       |       |
%  |              |       |       |
% 0|--------------|-------|-------|----------------->
%      -pi      -w_c             w_c      pi      w [rad s^-1]

%
% ideal impulse response  (non-causal)
%  h(n) = ( 1/(pi*n) )*sin( omega_c*n)
%
%                        ^
%                        |
%                     _--|--_
%                   _-   |   -_
%       _   _-_   _-     |     -_   _-_   _
% __--_- -_-   -_-       |       -_-   -_- -_--__
%------------------------|-------------------------->
%                        0

%
% shifted impulse response (causal)
%  h(M/2 +n) = h(M/2 -n)                (h is shifted by M/2)
%                        ^                       
%                        |                       
%                        |                    _-----_
%                        |                  _-       -_
%                        |      _   _-_   _-           -_   _-_   _
%                        |__--_- -_-   -_-               -_-   -_- -_--__
%                        |-----------------------|----------------------|->
%                        0                      M/2                    M-1
%
% response also truncated @ M-1
% coefficients:
% h(0), h(1), ..., h(M-1)  ---|>  NOTE: matlab is 1-indexed, so  <|
%                           --|>  h(1), h(2), ..., h(M)          <|
%

M = 10; %window size

h = zeros(1,M);

for n = -M/2:M/2
  if n == 0
    h(M/2 +n+1) = -( 1/(pi*.5) )*sin(omega_c*.5);
  else
    h(M/2 +n+1) = -( 1/(pi*n) )*sin(omega_c*n);
  end
end

%figure
%plot(h)


%implementation of FIR filter

in = zeros(1,M);

theta_dot_filt = zeros(length(theta_dot),1);

for i = 1:length(theta_dot)
  
  for j = length(in):-1:2  %shift right
    in(j) = in(j-1);
  end
  in(1) = theta_dot(i);
  
  for j = 1:length(in)
    theta_dot_filt(i) = theta_dot_filt(i) + in(j)*h(j);
  end
end


figure

%plot unfiltered signal
plot(t,theta_dot)
hold on

%add filtered signal
plot(t,theta_dot_filt)

title('$\dot{\theta}$')










%%
%clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/filterDesignFIR

run('latexDefaults.m')

isTest = 0;

alpha = 0.3;

data = csvread('testForFIR.csv');

matlabBlue   = [ 0       0.4470  0.7410 ];
matlabPurple = [ 0.4940  0.1840  0.5560 ];

dataStart = 780;
dataEnd   = length(data);

t         = data( dataStart:dataEnd, 1 );
theta     = data( dataStart:dataEnd, 2 );
x         = data( dataStart:dataEnd, 3 );
theta_dot = data( dataStart:dataEnd, 4 );
x_dot     = data( dataStart:dataEnd, 5 );

for jj = 2:2

  %window size
  if jj == 1
    N = 5;
  elseif jj ==2
    N = 15
  end

  %averaging filter with equal weights
  h = ones(1,N)*(1/N);

  %implementation of FIR filter
  in = zeros(1,N);

  theta_dot_filt = zeros(length(theta_dot),1);

  for i = 1:length(theta_dot)

    for j = length(in):-1:2  %shift right
      in(j) = in(j-1);
    end
    in(1) = theta_dot(i);

    for j = 1:length(in)
      theta_dot_filt(i) = theta_dot_filt(i) + in(j)*h(j);
    end
  end

  if jj == 1
    figure(1);
  else
    h_thetaDot = figure(1);
  end
  if jj == 1
    plot(t,theta_dot, 'linewidth', 1, 'color', matlabBlue )
    hold on
    plot(t,theta_dot_filt, 'linewidth', 1.5, 'color', [ 0 .55 0 ] )
  elseif jj == 2
    plot(t,theta_dot_filt, 'linewidth', 1.5, 'color', matlabPurple )
  end
  axis([ 47.2181  49.1199  -2.2425  2.3969 ])
  xlabel('$t$ [s]')
  ylabel('$\dot{\theta}$ [rad s$^{-1}$]')
  if jj == 2
    legend( 'Numerical Differentiation', ...
            'With MA Filter, $N = 5$',   ...
            'With MA Filter, $N = 15$',  ...
            'location', 'southeast'      )
    grid on, grid minor
  end



  %implementation of FIR filter
  in = zeros(1,N);

  x_dot_filt = zeros(length(x_dot),1);
  %xEst       = zeros(length(x_dot),1);

  for i = 1:length(x_dot)

    for j = length(in):-1:2  %shift right
      in(j) = in(j-1);
    end
    in(1) = x_dot(i);

    for j = 1:length(in)
      x_dot_filt(i) = x_dot_filt(i) + in(j)*h(j);
      %if i == 1
      %  xEst(i) = x_dot_filt(i);
      %else
      %  xEst(i) = alpha*x_dot_filt(i) + ( 1 - alpha )*xEst(i-1);
      %end
    end
  end

  if j == 1
    figure(2);
  else
    h_xDot = figure(2);
  end
  if jj == 1
    plot(t,x_dot, 'linewidth', 1, 'color', matlabBlue )
    hold on
    plot(t,x_dot_filt, 'linewidth', 1.5, 'color', [ 0 .55 0 ] )
  elseif jj == 2
    plot(t,x_dot_filt, 'linewidth', 1.5, 'color', matlabPurple )
  end
  axis([ 33.6448  35.2543  -0.0141  0.0143 ])
  xlabel('$t$ [s]')
  ylabel('$\dot{x}$ [m s$^{-1}$]')
  if jj == 2
    legend( 'Numerical Differentiation', ...
            'With MA Filter, $N = 5$',   ...
            'With MA Filter, $N = 15$',  ...
            'location', 'southeast'      )
    grid on, grid minor
  end

%exponential smoothing 
%  xEst = alpha*x + ( 1 - alpha )*xEstPrev

  figure
  plot(t,x_dot_filt, 'linewidth', 1.5, 'color', matlabBlue ), hold on
  plot(t,xEst, 'linewidth', 1.5, 'color', matlabPurple )
end
%%












if 0
%%
%implementation of FIR filter (with ring buffer)

in = zeros(1,M);

theta_dot_filt = zeros(length(theta_dot),1);

offset = 0;

for i = 1:L
  
  in(offset     +1) = theta_dot(i);     % +1 for matlab
  
  for j = offset:M+offset-1
    ringDex = mod(j,M)       +1;  % +1 for matlab
    
    theta_dot_filt(i) = theta_dot_filt(i) + in(ringDex)*h(ringDex);
  end
  
  offset = offset+1;
  if offset == M    % +1 %  +1 for matlab
    offset = 0;
  end
end

%scatter(t,theta_dot_filt,100,'.')
%%
end





%%
clear all, close all, clc

isTest = 1;

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/filterDesignFIR

run('latexDefaults.m')

data = csvread('testForFIR.csv');

matlabBlue = [ 0 0.4470 0.7410 ];

testData = csvread('ringFIRtest1.csv');

x3    = testData(:,1);
x4    = testData(:,2);
t     = testData(:,3)-testData(1,3); %start time @zero
x1    = testData(:,4);
x2    = testData(:,5);
x3FIR = testData(:,6);
x4FIR = testData(:,7);

h_thetaDot = figure
hold on
%scatter(t,x3,45,'.')
plot(t,x3, 'linewidth', 1, 'color', matlabBlue )
plot(t,x3FIR, 'linewidth', 1.2, 'color', [ 0 .55 0 ] )
axis([10.0456   14.4826  -11.5628   10.6954])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad s$^{-1}$]')
legend( 'Numerical Differentiation', ...
        'With MA Filter',            ...
        'location', 'southwest'      )
grid on, grid minor

h_xDot = figure
hold on
%scatter(t,x4,45,'.')
plot(t,x4, 'linewidth', 1, 'color', matlabBlue )
plot(t,x4FIR, 'linewidth', 1.2, 'color', [ 0 .55 0 ] )
axis([3.2661 5.1720 -0.5447 0.3469])
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m s$^{-1}$]')
legend( 'Numerical Differentiation', ...
        'With MA Filter',            ...
        'location', 'southwest'      )
grid on, grid minor

%implementation of FIR filter (with ring buffer)

L = length(x4);

N = 5; %window size

in = zeros(1,N);

theta_dot_filt = zeros(length(x4),1);

offset = 0;

%averaging filter with equal weights
h = ones(1,N)*(1/N);

for i = 1:L
  
  in(offset     +1) = x4(i);     % +1 for matlab
  
  for j = offset:N+offset-1
    ringDex = mod(j,N)       +1;  % +1 for matlab
    
    theta_dot_filt(i) = theta_dot_filt(i) + in(ringDex)*h(ringDex);
  end
  
  offset = offset+1;
  if offset == N
    offset = 0;
  end
end

%scatter(t,theta_dot_filt,100,'.')
%plot(t,theta_dot_filt)







%exponential filter
% xEst = alpha*x + ( 1 - alpha )*xEstPrev






%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  if isTest
    testID='MA_test';
  else
    testID='MA_design';
  end
  
  for jjj = 1:2
    switch jjj
    case 1
        figHandle=h_xDot;
        fileName=strcat('xDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 2
        figHandle=h_thetaDot;
        fileName=strcat('thetaDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end













