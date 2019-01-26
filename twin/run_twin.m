clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twin

run('latexDefaults.m')

run('initTwin.m')

%define variable for default matlab plot color
matlabBlue   = [ 0     0.4470 0.7410 ];
matlabRed    = [ 0.85  0.325  0.098  ];
matlabPurple = [ 0.494 0.184  0.556  ];

noFriction     = 0;
noCartFriction = 1;

documentation = 1; %figures are plottet seperately if documentation is on

if noFriction
  b_c_c = 0; b_c_v = 0; b_p_c = 0; b_p_v = 0;
elseif noCartFriction
  b_c_c = 0; b_c_v = 0;
end

%----------SIMULATION ODE45------------------------------------------------

con = 4; %select control

%initial conditions for ode45
if con == 0
  theta1_0         = -.01;
  theta2_0         = +.01;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
elseif con == 1
  theta1_0         = pi;
  theta2_0         = pi;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
elseif con == 2
  theta1_0         = pi;
  theta2_0         = pi;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
elseif con == 3
  theta1_0         = pi+.05;
  theta2_0         = pi+.05;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
elseif con == 4
  theta1_0         = pi;
  theta2_0         = pi;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
end

%sample time and final time [s]
Ts      = 0.0067;
%                                            added to obtain
%        controller    time of simulation    non-zero MA RMS of i_a
if       con == 0,     T_final = 10          +1.1;
elseif   con == 1,     T_final = 15          +1.1;
elseif   con == 2,     T_final = 10          +1.1;
elseif   con == 3,     T_final = 10          +1.1;
elseif   con == 4,     T_final = 10          +1.1;
end                    %7.8 for swing
                       %20 for swing&catch

%initialization for ode45
tspan = 0:Ts:T_final +.008;
init  = [ theta1_0 theta2_0 x_0 theta1_dot_0 theta2_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[t, q] = ode45( @(t,q)                                     ...
                simTwin( t, q, con, m1, m2, M, l1, l2,     ...
                         g, k_tanh, r, k_tau,              ...
                         b_p1_c, b_p1_v,                   ...
                         b_p2_c, b_p2_v,                   ...
                         b_c_c, b_c_v                   ), ...
                tspan, init, options                           );

%assigning results of ode45 simulation
theta1      =  q(:,1);
theta2      =  q(:,2);
x           =  q(:,3);
theta1_dot  =  q(:,4);
theta2_dot  =  q(:,5);
x_dot       =  q(:,6);

%initializing 2nd derivatives and amature current
theta1_dot_dot = zeros(size(t));
theta2_dot_dot = zeros(size(t));
x_dot_dot      = zeros(size(t));
i_a            = zeros(size(t));
ia_rms         = zeros(size(t));
E_delta1       = zeros(size(t));
E_delta2       = zeros(size(t));
E_T            = zeros(size(t));

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta1_dot_dot(i),  ...
        theta2_dot_dot(i), ...
        x_dot_dot(i),      ...
        i_a(i),            ...
        E_delta1(i),       ...
        E_delta2(i),       ...
        E_T(i)     ]   = simTwin( t(i), q(i,:), con, m1, m2, M, l1, l2, ...
                                  g, k_tanh, r, k_tau,                  ...
                                  b_p1_c, b_p1_v,                       ...
                                  b_p2_c, b_p2_v,                       ...
                                  b_c_c, b_c_v                          );
end

windowSize = ceil(1/Ts);  %= 1 s long window
for i = 1:length(t)-windowSize
  ia_rms(i) = rms( i_a(i:i+windowSize) );
end


h_theta = figure;
plot( t, theta1, 'linewidth', 1.5, 'color', matlabBlue )
hold on
plot( t, theta2, 'linewidth', 1.5, 'color', matlabRed )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
yPI = 1; xPI = 0; run('piAxes.m')
xlim([min(t) max(t)-1.1])

%% ----------ANIMATION-----------------------------------------------------


run('animation.m')

%get size of animation plot to scale theta plot
aspectRatioAni = pbaspect;

%% ----------PLOT RESULTS--------------------------------------------------

run('plotFigs.m')


%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  %%
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  if con == 0
    testID = '_twinStabilize';        xOn = 1;
  else
    %testID = '_twinSwing';           xOn = 0; <--carefull
    testID = '_twinSwingAndCatch';    xOn = 1;
  end
  
  for jj = 1:1:10
    switch jj
    case 1*xOn
        figHandle=h_x;
        fileName=strcat('x',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 2*xOn
        figHandle=h_xDot;
        fileName=strcat('xDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 3*xOn
        figHandle=h_xDotDot;
        fileName=strcat('xDotDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 4
        figHandle=h_theta;
        fileName=strcat('theta',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 5
        figHandle=h_thetaDot;
        fileName=strcat('thetaDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 6
        figHandle=h_thetaDotDot;
        fileName=strcat('thetaDotDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 7
        figHandle=h_ia;
        fileName=strcat('ia',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 8
        figHandle=h_phase;
        fileName=strcat('phase',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 9
        figHandle=h_Edelta;
        fileName=strcat('Edelta',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 10
        figHandle=h_ani;
        fileName=strcat('ani',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end