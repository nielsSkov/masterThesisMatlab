clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinKalman

%add paths to data
addpath('~/syncDrive/uni/thesis/matlab/twinKalman/data/pend1test')
addpath('~/syncDrive/uni/thesis/matlab/twinKalman/data/pend2test')

run('latexDefaults.m')

%define variable for default matlab plot color
matlabBlue = [0 0.4470 0.7410];


%% -------IMPORT TEST DATA-------------------------------------------------

dataFile = 'test1pend1.csv';
%dataFile = 'test1pend2.csv';

data = csvread( dataFile, 0, 0);

dataStart = 1;
dataEnd   = length(data);

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%angle of pendulum
theta = data(dataStart:dataEnd,2);

%velocity of pendulum
theta_dot = data(dataStart:dataEnd,3);

%sampling frequency 
Fs = 149.925;    % [ Hz ]

%% -------FFT OF ANGLE SIGNAL---------------------------------------------------

%Length of signal
L = length(theta);

%compute FFT of signal
theta_fft = fft(theta);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(theta_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure
plot(f,P1) 
%title('Single-Sided Amplitude Spectrum for Angle')
xlabel('$f$ [Hz]')
ylabel('$|P1(f)|$ [rad]')
grid on, grid minor
ylim([ 0 0.05 ])
xlim([ 0 12 ])



%% -------FFT OF ANGULAR VELOCITY SIGNAL---------------------------------------------------

%Length of signal
L = length(theta_dot);

%compute FFT of signal
theta_fft = fft(theta_dot);

%Compute the two-sided spectrum P2. Then compute the single-sided spectrum
%P1 based on P2 and the even-valued signal length L
P2 = abs(theta_fft/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure
plot(f,P1)
%title('Single-Sided Amplitude Spectrum of Angular Velocity')
xlabel('$f$ [Hz]')
ylabel('$|P1(f)|$ [rad $\cdot$ s$^{-1}$]')
grid on, grid minor
ylim([ 0 0.05 ])
xlim([ 0 12 ])


%% -------REMOVE LOW FREQUENCIES FROM TEST DATA----------------------------

%frequency found in FFT
Fstop = 3;
Fpass = 3.5;

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
theta_noise     = filter( HpFilt, theta);
theta_dot_noise = filter( HpFilt, theta_dot);

%cropping noise signals
noiseStart      = 4000;
noiseEnd        = 8000;
t               = t(noiseStart:noiseEnd)-t(noiseStart);
theta_noise     = theta_noise(noiseStart:noiseEnd);
theta_dot_noise = theta_dot_noise(noiseStart:noiseEnd);

%ensure zero mean
theta_noise     = theta_noise     - mean(theta_noise);
theta_dot_noise = theta_dot_noise - mean(theta_dot_noise);

%% -------PLOTTING EXTRACTED NOISE SIGNALS---------------------------------

figure
plot(t,theta_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')

figure
plot(t,theta_dot_noise)
grid on, grid minor
xlim([ 0 t(end) ])
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad $\cdot$ s$^{-1}$]')


%% -------PLOTTING PSD OF NOISE SIGNALS------------------------------------

figure
hold on
[ Hreal, Treal ] = periodogram( theta_noise, [], 10000, 20, 'power' );
plot(Treal, pow2db(Hreal))
grid on, grid minor

powMean = mean(Hreal)
dbMean  = mean(pow2db(Hreal))

%add mean
plot(Treal,ones(size(Treal))*dbMean, 'linewidth', 2)

xlabel('Normalized Frequency [rad $\cdot$ sample$^{-1}$]')
ylabel('Power [dB]')

figure
hold on
[ Hreal, Treal ] = periodogram( theta_dot_noise, [], 10000, 20, 'power' );
plot(Treal, pow2db(Hreal))
grid on, grid minor

powMean = mean(Hreal)
dbMean  = mean(pow2db(Hreal))

%add mean
plot(Treal,ones(size(Treal))*dbMean, 'linewidth', 2)

xlabel('Normalized Frequency [rad $\cdot$ sample$^{-1}$]')
ylabel('Power [dB]')


%%

%calculating covariance matrix from noise signals
theta_cov = cov(theta_noise, theta_dot_noise);

%generating noise
rng default  % For reproducibility
v_d = mvnrnd([ 0 0 ],theta_cov,4000);

%plot noise signals against each other
figure
plot(theta_noise, theta_dot_noise,'*') %measured
xlabel('$\theta$ [rad]')
ylabel('$\dot{\theta}$ [rad $\cdot$ s$^{-1}$]')
grid on, grid minor


figure
plot(v_d(:,1),v_d(:,2),'*')            %generated
xlabel('$\theta$ [rad]')
ylabel('$\dot{\theta}$ [rad $\cdot$ s$^{-1}$]')
grid on, grid minor
