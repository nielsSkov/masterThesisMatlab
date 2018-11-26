clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/cartPendulum

run('latexDefaults.m')

run('initCartPendulum.m')

%define variable for default matlab plot color
matlabBlue = [0 0.4470 0.7410];

%plot only the orbit
plotOrbit = 0;

noFriction     = 0;
noCartFriction = 1;
noMass         = 0; % no mass of cart, M
fComp          = 0; % friction compensation (feed forward)

slm   = 1; %<-enable/disable sliding mode catch controller
noLim = 0; %<-select weather or not to limit control to actuator capability
iaLim = 1; %<-limmit actuation peak on/off
conX  = 1; %<-select whether or not to control x-position/velocity
con   = 0; %<-controller selection where,
%             0 - no control
%             1 - "rudementary" controller (Åström)
%             2 - sign-based controller (Åström)    <--WARNING! VERY slow..
%             3 - sat-approximation of 2
%             4 - sat-based controller (Åström)

documentation = 1; %figures are plottet seperately if documentation is on

if noFriction
  b_c_c = 0; b_c_v = 0; b_p_c = 0; b_p_v = 0;
elseif noCartFriction
  b_c_c = 0; b_c_v = 0;
end

if noMass
    M = 1e-12;
end

%----------SIMULATION ODE45------------------------------------------------

%initial conditions for ode45 based on controller choise
switch con
  case 0
    if slm == 0
      theta_0      = 2*pi-.2;
      x_0          = 0;
      theta_dot_0  = -pi;
      x_dot_0      = 0;
    else
      theta_0      = 0.1;
      x_0          = 0;
      theta_dot_0  = 0;
      x_dot_0      = 0;
    end
  case 1
    theta_0      = pi-.1;
    x_0          = 0;
    theta_dot_0  = 0;
    x_dot_0      = 0;
  case 2
    theta_0      = pi;
    x_0          = 0;
    theta_dot_0  = 0;
    x_dot_0      = 0;
  case 3
    theta_0      = pi;
    x_0          = 0;
    theta_dot_0  = 0;
    x_dot_0      = 0;
  case 4
    theta_0      = pi;
    x_0          = 0;
    theta_dot_0  = 0;
    x_dot_0      = 0;
end

%sample time [s]
Ts      = .01;

%choose simulation length based on controller choise
switch con
  case 0
    T_final = 10;
  case 1
    if conX
      T_final = 6.82;
    else
      T_final = 20;
    end
  case 2
    if conX
      T_final = 6.82;
    else
      T_final = 15;
    end
  case 3
    if conX
      T_final = 6.82;
      %T_final = 20;  %<--to show x-position/velocity control reaching zero
    else
      T_final = 7.5;
    end
  case 4
    if conX
      T_final = 6.75+1.5;
      %T_final = 20;  %<--to show x-position/velocity control reaching zero
    else
      T_final = 7.5;
    end
end

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ theta_0 x_0 theta_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%setting input and time vector (only used if con = -1) to zero
u    = 0;
tvec = 0;

%run ode45 simulation
[t, q] = ode45( @(t,q) simCartPendulum( t, q, u, tvec,         ...
                                        con, conX, slm, noLim, ...
                                        iaLim, m, M, l, g,     ...
                                        k_tanh, r, k_tau,      ...
                                        b_p_c, b_p_v,          ...
                                        b_c_c, b_c_v, fComp    ),  ...
                tspan, init, options                               );

%assigning results of ode45 simulation
theta     =  q(:,1);
x         =  q(:,2);
theta_dot =  q(:,3);
x_dot     =  q(:,4);

%initializing 2nd derivatives, amature current,
%difference in energy and total energy
theta_dot_dot = zeros(size(t));
x_dot_dot     = zeros(size(t));
i_a           = zeros(size(t));
ia_rms        = zeros(size(t));
E_delta       = zeros(size(t));
E_T           = zeros(size(t));

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta_dot_dot(i), ...
       x_dot_dot(i),     ...
       i_a(i),           ...
       E_delta(i),       ...
       E_T(i)               ] = simCartPendulum( t(i), q(i,:), u, tvec, ...
                                                 con, conX, slm, noLim, ...
                                                 iaLim, m, M, l, g,     ...
                                                 k_tanh, r, k_tau,      ...
                                                 b_p_c, b_p_v,          ...
                                                 b_c_c, b_c_v, fComp    );
end

%rolling rms of i_a
for i = 1:length(t)
  ia_rms(i) = rms( i_a(1:i) );
end

run('plotFigs.m')

%% ----------ANIMATION-----------------------------------------------------
run('animation.m')

%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  if con == 1 && conX == 0
    testID='_1_noConX';
  elseif con == 1 && conX == 1
    testID='_1_conX';
  elseif con == 2 && conX == 0
    testID='_2_noConX';
  elseif con == 2 && conX == 1
    testID='_2_conX';
  elseif con == 3 && conX == 0
    testID='_3_noConX';
  elseif con == 3 && conX == 1
    testID='_3_conX';
  elseif con == 4 && conX == 0
    testID='_4_noConX';
  elseif con == 4 && conX == 1
    testID='_4_conX';
  end
  
  testID = '_slidingMode';
  
  if plotOrbit == 1
    figHandle=h_orbit;
    fileName='orbit';
    saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
  end
  
  for jj = 1:1:10
    switch jj
    case 1
        figHandle=h_x;
        fileName=strcat('x',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 2
        figHandle=h_xDot;
        fileName=strcat('xDot',testID);
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 3
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