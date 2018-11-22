clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/filterDesignFIR

run('latexDefaults.m')

data = csvread('testForFIR.csv');

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

M = 16; %window size

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




%averaging filter with equal weights
h = ones(1,M)*(1/M);

%implementation of FIR filter
tic
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
toc
%add average filtered signal
plot(t,theta_dot_filt)






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

scatter(t,theta_dot_filt,100,'.')



%%
clear all, close all, clc

testData = csvread('ringFIRtest1.csv');

x3    = testData(:,1);
x4    = testData(:,2);
t     = testData(:,3)-testData(1,3); %start time @zero
x1    = testData(:,4);
x2    = testData(:,5);
x3FIR = testData(:,6);
x4FIR = testData(:,7);

figure
plot(t,x3)
hold on
plot(t,x3FIR)

figure
plot(t,x4)
hold on
plot(t,x4FIR)


%implementation of FIR filter (with ring buffer)

L = length(x4);

M = 5; %window size

in = zeros(1,M);

theta_dot_filt = zeros(length(x4),1);

offset = 0;

%averaging filter with equal weights
h = ones(1,M)*(1/M);

for i = 1:L
  
  in(offset     +1) = x4(i);     % +1 for matlab
  
  for j = offset:M+offset-1
    ringDex = mod(j,M)       +1;  % +1 for matlab
    
    theta_dot_filt(i) = theta_dot_filt(i) + in(ringDex)*h(ringDex);
  end
  
  offset = offset+1;
  if offset == M;
    offset = 0;
  end
end

scatter(t,theta_dot_filt,100,'.')
plot(t,theta_dot_filt)




