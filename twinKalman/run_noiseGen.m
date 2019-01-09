clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinKalman

%add paths to data
addpath('~/syncDrive/uni/thesis/matlab/twinKalman/data/pend1test')
addpath('~/syncDrive/uni/thesis/matlab/twinKalman/data')

run('latexDefaults.m')

%define variable for default matlab plot color
matlabBlue = [0 0.4470 0.7410];


%% -------IMPORT TEST DATA-------------------------------------------------

%dataFile = 'test1pend1.csv';
%dataFile = 'noiseCovTwinTest2.csv';
dataFile  = 'tuneKF4.csv';

data = csvread( dataFile, 0, 0);

dataStart = 1;
%dataStart = 91;
dataEnd   = length(data)-1;

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%angle of pendulum 1
theta1     = data(dataStart:dataEnd,2);

%angle of pendulum 2
theta2     = data(dataStart:dataEnd,3);

%position of cart
x          = data(dataStart:dataEnd,4);

%velocity of pendulum 1
theta1_dot = data(dataStart:dataEnd,5);

%velocity of pendulum 2
theta2_dot = data(dataStart:dataEnd,6);

%velocity of cart
x_dot      = data(dataStart:dataEnd,7);

%sampling frequency 
Fs = 149.925;    % [ Hz ]

%% -------FFT OF PENDULUM 1 ANGLE SIGNAL-----------------------------------

ylimUpper = 0.5;

%Length of signal
L = length(theta1);


%compute FFT of signal
theta1_fft = fft(theta1);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(theta1_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure
subplot(6,1,1)
plot(f,P1) 
%title('Single-Sided Amplitude Spectrum for Angle')
xlabel('$f$ [Hz]')
ylabel('$|\theta_1|$ [rad]')
grid on, grid minor
ylim([ 0 ylimUpper ])
xlim([ 0 12 ])



%%-------FFT OF PENDULUM 2 ANGLE SIGNAL------------------------------------

%Length of signal
L = length(theta2);

%compute FFT of signal
theta2_fft = fft(theta2);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(theta2_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
subplot(6,1,2)
plot(f,P1) 
%title('Single-Sided Amplitude Spectrum for Angle')
xlabel('$f$ [Hz]')
ylabel('$|\theta_2|$ [rad]')
grid on, grid minor
ylim([ 0 ylimUpper ])
xlim([ 0 12 ])



%%-------FFT OF CART POSITION SIGNAL---------------------------------------

%Length of signal
L = length(x);

%compute FFT of signal
x_fft = fft(x);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(x_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
subplot(6,1,3)
plot(f,P1) 
%title('Single-Sided Amplitude Spectrum for Position')
xlabel('$f$ [Hz]')
ylabel('$|x|$ [m]')
grid on, grid minor
ylim([ 0 ylimUpper ])
xlim([ 0 12 ])



%%-------FFT OF PENDULUM 1 ANGULAR VELOCITY SIGNAL-------------------------

%Length of signal
L = length(theta1_dot);

%compute FFT of signal
theta1_dot_fft = fft(theta1_dot);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(theta1_dot_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
subplot(6,1,4)
plot(f,P1)
%title('Single-Sided Amplitude Spectrum of Angular Velocity')
xlabel('$f$ [Hz]')
ylabel('$|\dot{\theta}_1|$ [rad $\cdot$ s$^{-1}$]')
grid on, grid minor
ylim([ 0 ylimUpper ])
xlim([ 0 12 ])


%%-------FFT OF PENDULUM 2 ANGULAR VELOCITY SIGNAL-------------------------

%Length of signal
L = length(theta2_dot);

%compute FFT of signal
theta2_dot_fft = fft(theta2_dot);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(theta2_dot_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
subplot(6,1,5)
plot(f,P1)
%title('Single-Sided Amplitude Spectrum of Angular Velocity')
xlabel('$f$ [Hz]')
ylabel('$|\dot{\theta}_2|$ [rad $\cdot$ s$^{-1}$]')
grid on, grid minor
ylim([ 0 ylimUpper ])
xlim([ 0 12 ])


%%-------FFT OF CART VELOCITY SIGNAL---------------------------------------

%Length of signal
L = length(x_dot);

%compute FFT of signal
x_dot_fft = fft(x_dot);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(x_dot_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
subplot(6,1,6)
plot(f,P1)
%title('Single-Sided Amplitude Spectrum of Angular Velocity')
xlabel('$f$ [Hz]')
ylabel('$|\dot{x}|$ [m $\cdot$ s$^{-1}$]')
grid on, grid minor
ylim([ 0 ylimUpper ])
xlim([ 0 12 ])


%% -------REMOVE LOW FREQUENCIES FROM TEST DATA----------------------------

%frequency found in FFT
Fstop = 5;
Fpass = 5.5;

Astop = 100;
Apass = 1;

HpFilt = designfilt( 'highpassfir',                       ...
                     'StopbandFrequency',   Fstop,        ...
                     'PassbandFrequency',   Fpass,        ...
                     'StopbandAttenuation', Astop,        ...
                     'PassbandRipple',      Apass,        ...
                     'SampleRate',          Fs,           ...
                     'DesignMethod',        'equiripple'  );

%tool to see filter characteristics:
%fvtool(d)

%filter data so only noise remains
theta1_noise     = filter( HpFilt, theta1);
theta2_noise     = filter( HpFilt, theta2);
x_noise          = filter( HpFilt, x);
theta1_dot_noise = filter( HpFilt, theta1_dot);
theta2_dot_noise = filter( HpFilt, theta2_dot);
x_dot_noise      = filter( HpFilt, x_dot);

%cropping noise signals
noiseStart       = 1;%3000;
noiseEnd         = length(t);%4000;
t                = t(                noiseStart:noiseEnd ) - t(noiseStart);
theta1_noise     = theta1_noise(     noiseStart:noiseEnd );
theta2_noise     = theta2_noise(     noiseStart:noiseEnd );
x_noise          = x_noise(          noiseStart:noiseEnd );
theta1_dot_noise = theta1_dot_noise( noiseStart:noiseEnd );
theta2_dot_noise = theta2_dot_noise( noiseStart:noiseEnd );
x_dot_noise      = x_dot_noise(      noiseStart:noiseEnd );

%ensure zero mean
theta1_noise     = theta1_noise     - mean(theta1_noise);
theta2_noise     = theta2_noise     - mean(theta2_noise);
x_noise          = x_noise          - mean(x_noise);
theta1_dot_noise = theta1_dot_noise - mean(theta1_dot_noise);
theta2_dot_noise = theta2_dot_noise - mean(theta2_dot_noise);
x_dot_noise      = x_dot_noise      - mean(x_dot_noise);

%% -------PLOTTING EXTRACTED NOISE SIGNALS---------------------------------

figure

subplot(6,1,1)
plot(t,theta1_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_1$ [rad]')

subplot(6,1,2)
plot(t,theta2_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta_2$ [rad]')

subplot(6,1,3)
plot(t,x_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$x$ [rad]')

subplot(6,1,4)
plot(t,theta1_dot_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')

subplot(6,1,5)
plot(t,theta2_dot_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')

subplot(6,1,6)
plot(t,x_dot_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')


%% -------PLOTTING PSD OF NOISE SIGNALS------------------------------------

% figure
% hold on
% [ Hreal, Treal ] = periodogram( theta1_noise, [], 10000, 20, 'power' );
% plot(Treal, pow2db(Hreal))
% grid on, grid minor
% 
% powMean = mean(Hreal)
% dbMean  = mean(pow2db(Hreal))
% 
% %add mean
% plot(Treal,ones(size(Treal))*dbMean, 'linewidth', 2)
% 
% xlabel('Normalized Frequency [rad $\cdot$ sample$^{-1}$]')
% ylabel('Power [dB]')
% 
% figure
% hold on
% [ Hreal, Treal ] = periodogram( theta1_dot_noise, [], 10000, 20, 'power' );
% plot(Treal, pow2db(Hreal))
% grid on, grid minor
% 
% powMean = mean(Hreal)
% dbMean  = mean(pow2db(Hreal))
% 
% %add mean
% plot(Treal,ones(size(Treal))*dbMean, 'linewidth', 2)
% 
% xlabel('Normalized Frequency [rad $\cdot$ sample$^{-1}$]')
% ylabel('Power [dB]')


%%

%calculating covariance matrix from noise signals
noiseCov = cov( [ theta1_noise,     ...
                   theta2_noise,     ...
                   x_noise,          ...
                   theta1_dot_noise, ...
                   theta2_dot_noise, ...
                   x_dot_noise       ]  );

%print R for easy code implementation
fprintf( 'R =\n' )
fprintf( '%.15f, %.15f, %.15f,\n',  noiseCov(1,1:3) )
fprintf( '%.15f, %.15f, %.15f,\n',  noiseCov(2,1:3) )
fprintf( '%.15f, %.15f, %.15f\n\n', noiseCov(3,1:3) )

%generating noise
rng default  % For reproducibility
nrOfSamples = noiseEnd-noiseStart;
w_n = mvnrnd([ 0 0 0 0 0 0 ],noiseCov,nrOfSamples);


%plot noise signals against each other
for i = 1:2

  if i == 1
    %plot measured
  elseif i == 2
    %plot generated
    theta1_noise     = w_n(:,1);
    theta2_noise     = w_n(:,2);
    x_noise          = w_n(:,3);
    theta1_dot_noise = w_n(:,4);
    theta2_dot_noise = w_n(:,5);
    x_dot_noise      = w_n(:,6);
  end
  
  figure
  subplot(6,6,1)
  plot(theta1_noise, theta1_noise,'*'), axis off
  %xlabel('$\theta_1$ [rad]')
  %ylabel('$\theta_1$ [rad]')
  %grid on, grid minor
  subplot(6,6,2)
  plot(theta1_noise, theta2_noise,'*'), axis off
  %xlabel('$\theta_1$ [rad]')
  %ylabel('$\theta_2$ [rad]')
  %grid on, grid minor
  subplot(6,6,3)
  plot(theta1_noise, x_noise,'*'), axis off
  %xlabel('$\theta_1$ [rad]')
  %ylabel('$x$ [m]')
  %grid on, grid minor
  subplot(6,6,4)
  plot(theta1_noise, theta1_dot_noise,'*'), axis off
  %xlabel('$\theta_1$ [rad]')
  %ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,5)
  plot(theta1_noise, theta2_dot_noise,'*'), axis off
  %xlabel('$\theta_1$ [rad]')
  %ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,6)
  plot(theta1_noise, x_dot_noise,'*'), axis off
  %xlabel('$\theta_1$ [rad]')
  %ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %grid on, grid minor


  subplot(6,6,7)
  plot(theta2_noise, theta1_noise,'*'), axis off
  %xlabel('$\theta_2$ [rad]')
  %ylabel('$\theta_1$ [rad]')
  %grid on, grid minor
  subplot(6,6,8)
  plot(theta2_noise, theta2_noise,'*'), axis off
  %xlabel('$\theta_2$ [rad]')
  %ylabel('$\theta_2$ [rad]')
  %grid on, grid minor
  subplot(6,6,9)
  plot(theta2_noise, x_noise,'*'), axis off
  %xlabel('$\theta_2$ [rad]')
  %ylabel('$x$ [m]')
  %grid on, grid minor
  subplot(6,6,10)
  plot(theta2_noise, theta1_dot_noise,'*'), axis off
  %xlabel('$\theta_2$ [rad]')
  %ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,11)
  plot(theta2_noise, theta2_dot_noise,'*'), axis off
  %xlabel('$\theta_2$ [rad]')
  %ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,12)
  plot(theta2_noise, x_dot_noise,'*'), axis off
  %xlabel('$\theta_2$ [rad]')
  %ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %grid on, grid minor


  subplot(6,6,13)
  plot(x_noise, theta1_noise,'*'), axis off
  %xlabel('$x$ [m]')
  %ylabel('$\theta_1$ [rad]')
  %grid on, grid minor
  subplot(6,6,14)
  plot(x_noise, theta2_noise,'*'), axis off
  %xlabel('$x$ [m]')
  %ylabel('$\theta_2$ [rad]')
  %grid on, grid minor
  subplot(6,6,15)
  plot(x_noise, x_noise,'*'), axis off
  %xlabel('$x$ [m]')
  %ylabel('$x$ [m]')
  %grid on, grid minor
  subplot(6,6,16)
  plot(x_noise, theta1_dot_noise,'*'), axis off
  %xlabel('$x$ [m]')
  %ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,17)
  plot(x_noise, theta2_dot_noise,'*'), axis off
  %xlabel('$x$ [m]')
  %ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,18)
  plot(x_noise, x_dot_noise,'*'), axis off
  %xlabel('$x$ [m]')
  %ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %grid on, grid minor


  subplot(6,6,19)
  plot(theta1_dot_noise, theta1_noise,'*'), axis off
  %xlabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\theta_1$ [rad]')
  %grid on, grid minor
  subplot(6,6,20)
  plot(theta1_dot_noise, theta2_noise,'*'), axis off
  %xlabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\theta_2$ [rad]')
  %grid on, grid minor
  subplot(6,6,21)
  plot(theta1_dot_noise, x_noise,'*'), axis off
  %xlabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$x$ [m]')
  %grid on, grid minor
  subplot(6,6,22)
  plot(theta1_dot_noise, theta1_dot_noise,'*'), axis off
  %xlabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,23)
  plot(theta1_dot_noise, theta2_dot_noise,'*'), axis off
  %xlabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,24)
  plot(theta1_dot_noise, x_dot_noise,'*'), axis off
  %xlabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %grid on, grid minor


  subplot(6,6,25)
  plot(theta2_dot_noise, theta1_noise,'*'), axis off
  %xlabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\theta_1$ [rad]')
  %grid on, grid minor
  subplot(6,6,26)
  plot(theta2_dot_noise, theta2_noise,'*'), axis off
  %xlabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\theta_2$ [rad]')
  %grid on, grid minor
  subplot(6,6,27)
  plot(theta2_dot_noise, x_noise,'*'), axis off
  %xlabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$x$ [m]')
  %grid on, grid minor
  subplot(6,6,28)
  plot(theta2_dot_noise, theta1_dot_noise,'*'), axis off
  %xlabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,29)
  plot(theta2_dot_noise, theta2_dot_noise,'*'), axis off
  %xlabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,30)
  plot(theta2_dot_noise, x_dot_noise,'*'), axis off
  %xlabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %grid on, grid minor


  subplot(6,6,31)
  plot(x_dot_noise, theta1_noise,'*'), axis off
  %xlabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %ylabel('$\theta_1$ [rad]')
  %grid on, grid minor
  subplot(6,6,32)
  plot(x_dot_noise, theta2_noise,'*'), axis off
  %xlabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %ylabel('$\theta_2$ [rad]')
  %grid on, grid minor
  subplot(6,6,33)
  plot(x_dot_noise, x_noise,'*'), axis off
  %xlabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %ylabel('$x$ [m]')
  %grid on, grid minor
  subplot(6,6,34)
  plot(x_dot_noise, theta1_dot_noise,'*'), axis off
  %xlabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{\theta}_1$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,35)
  plot(x_dot_noise, theta2_dot_noise,'*'), axis off
  %xlabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{\theta}_2$ [rad $\cdot$ s$^{-1}$]')
  %grid on, grid minor
  subplot(6,6,36)
  plot(x_dot_noise, x_dot_noise,'*'), axis off
  %xlabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %ylabel('$\dot{x}$ [m $\cdot$ s$^{-1}$]')
  %grid on, grid minor
end