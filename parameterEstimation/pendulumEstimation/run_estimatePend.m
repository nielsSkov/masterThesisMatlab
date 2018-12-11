clear all; close all; clc                                                  %#ok<CLALL>

cd ~/syncDrive/uni/thesis/matlab/parameterEstimation/pendulumEstimation;

%add path to pendulum simulation and relevant data
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/senseTool')
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/pend1test')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/pend2test')

run('latexDefaults.m')

%%------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

%M     = 6.28;

sense = 1;

%initial guess
b_p_c =  4e-3;             % pendulum coulomb friction   [N m]
b_p_v = .4e-3;             % pendulum viscous friction   [N m s]

%this: %02i means two digit integer with leading zeros
dataFile = 'test1pend1.csv';
%dataFile = 'test1pend2.csv';

data = csvread( dataFile, 0, 0);

%for cropping test data
dataStart = 500;
dataEnd   = length(data);

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%input vector
u = zeros(size(t)); %no input

%output vector
y = data(dataStart:dataEnd,2);      %angle of pendulum

%velocity
y_dot = data(dataStart:dataEnd,3);  %velocity of pendulum (not used)

%input
uin = [ t u ];

par0 = [ b_p_c b_p_v ]  %set initial parameters for simulation

%initial values from start of data
theta_0     = y(1);
theta_dot_0 = y_dot(1);

%%-------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM -------------

%simulation of initial parameters
Ynew = sim_pendulum( u, t, par0 );

%close all; plot(t,y); hold on; plot(t,Ynew)


%%------------- USING sensetool FOR PARAMETER ESTIMATION -----------------

figure

if sense

  %making sure u and y is a column vector
  u = u(:);
  y = y(:);

  process='_pendulum';

  save meas_pendulum t u y %creating meas'TestName'

  run mainest.m

  %storring result for each iteration
  b_p_c = pare(1);
  b_p_v = pare(2);

else
  plot(t,y); hold on; plot(t,Ynew)
  grid on, grid minor
end


ax_lines = get(gca, 'Children');

est   = ax_lines(1).YData';
meas = ax_lines(2).YData';


close all
figure
plot(t,meas), hold on
plot(t,est)
grid on
grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
legend('Measured', 'Estimated', 'location', 'southeast')

