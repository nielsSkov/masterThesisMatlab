clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/cartPendulum

run('latexDefaults.m')

run('initCartPendulum.m')

noFriction     = 0;
noCartFriction = 1;
noMass         = 0; % no mass of cart, M
fComp          = 0; % friction compensation (feed forward)

conX = 1; %select whether or not to control x-position/velocity
con  = 3; %controller selection where,
%
%            0 - no control
%            1 - "rudementary" controller (Åström)
%            2 - sign-based controller (Åström)    <--WARNING! VERY slow..
%            3 - sat-approximation of 2
%            4 - sat-based controller (Åström)

documentation = 0; %figures are plottet seperately if documentation is on

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
    theta_0      = pi-.3;
    x_0          = 0;
    theta_dot_0  = 0;
    x_dot_0      = 0;
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
    T_final = 20;
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
      %T_final = 20;   <--to show x-position/velocity control reaching zero
    else
      T_final = 7.5;
    end
  case 4
    if conX
      T_final = 6.49;
      %T_final = 20;   <--to show x-position/velocity control reaching zero
    else
      T_final = 7.5;
    end
end

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ theta_0 x_0 theta_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[t, q] = ode45( @(t,q) simCartPendulum( t, q,                 ...
                                        con, conX, m, M, l,   ...
                                        g, k_tanh, r, k_tau,  ...
                                        b_p_c, b_p_v,         ...
                                        b_c_c, b_c_v, fComp   ),  ...
                tspan, init, options                              );

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
       E_T(i)               ]  = simCartPendulum( t(i), q(i,:),        ...
                                                  con, conX, m, M, l,  ...
                                                  g, k_tanh, r, k_tau, ...
                                                  b_p_c, b_p_v,        ...
                                                  b_c_c, b_c_v, fComp  );
end

%rolling rms of i_a
for i = 1:length(t)
  ia_rms(i) = rms( i_a(1:i) );
end

%plot all states
h_x = figure;
if documentation == 0
  axX = subplot(3,1,1);
end
plot( t, x, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$x$ [m]')
xlim([min(t) max(t)])

if documentation == 0
  axXD = subplot(3,1,2);
else
  h_xDot = figure;
end
plot( t, x_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
xlim([min(t) max(t)])

if documentation == 0
  axXDD = subplot(3,1,3);
else
  h_xDotDot = figure;
end
plot( t, x_dot_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{x}$ [m$\cdot$s$^{-2}$]')
xlim([min(t) max(t)])

h_theta = figure;
if documentation == 0
  axTheta = subplot(3,1,1);
end
plot( t, theta, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
xlim([min(t) max(t)])

if documentation == 0
  axThetaD = subplot(3,1,2);
else
  h_thetaDot = figure;
end
plot( t, theta_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
xlim([min(t) max(t)])

if documentation == 0
  axThetaDD = subplot(3,1,3);
else
  h_thetaDotDot = figure;
end
plot( t, theta_dot_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{\theta}$ [rad$\cdot$s$^{-2}$]')
xlim([min(t) max(t)])

if documentation == 0
  axesXTheta = [ axX axXD axXDD axTheta axThetaD axThetaDD ];
  linkaxes(axesXTheta, 'x')
end

%plot armature current
h_ia = figure;
plot( t, i_a, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$i_a$ [A]')
hold on
plot( t, ia_rms, 'color', [ 0 .6 0 ], 'linewidth', 1.5 )
i_max = 4.44; %4.58;
xlim([min(t) max(t)])
plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
legend( 'Motor Current',          ...
        'Rolling RMS of $i_a$',   ...
        'Max Continuous Current', ...
        'location', 'southeast'   )

%plot trajectory in theta-plane
h_phase = figure;
if documentation == 0
  subplot(3,1,[1 2]);
end
plot( theta, theta_dot, 'linewidth', 1.5 )
grid on, grid minor
axis equal
xlabel('$\theta$ [rad]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')

%plot difference in energy over time
if documentation == 0
  subplot(3,1,3);
else
  h_Edelta = figure;
end
plot( t, E_delta, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$E_\Delta$ [J]')
xlim([min(t) max(t)])

figure
xlim([min(t) max(t)])
E_min = M*g*l;
plot(xlim,[E_min E_min], 'r', 'linewidth', 1.5 )
hold on
plot( t, E_T, 'linewidth', 1.5 )
grid on, grid minor
xlim([min(t) max(t)])
xlabel('$t$ [s]')
ylabel('$E_{total}$ [J]')
legend( 'Energy at Rest', ...
        'Total Energy',   ...
        'location', 'northeast'   )

%% ----------ANIMATION-------------------------------------------------------

xp = x - l*sin(theta);
yp = l + l*cos(theta);
yc = l;

%Initializing Animation Figure
h_ani = figure;
axAni = axes;
grid on, grid minor
axis equal
hold on
xlabel('$x$ [m]')
ylabel('$y$ [m]')

%setting axis limits depending on controller choise
switch con
  case 0
    axis([ -1 1 0 1 ])
  case 1
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -2 .5 0 1 ])
    end
  case 2
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -.2 11.5 0 1 ])
    end
  case 3
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -.2 6 0 1 ])
    end
  case 4
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -.2 6 0 1 ])
    end
end

%Initializing Moving Objects and Trajectory
scatter(axAni, xp(1), yp(1), '.', 'b')
xpLast = xp(1);
ypLast = yp(1);
cart = rectangle('Position',[ x(1)-.15 yc-.07 .3 .14 ]);
rod1 = plot(axAni, [ x(1) xp(1) ] , [ yc yp(1) ], 'k', 'linewidth', 3);
drawnow

tic;

res = 1; % deviding resolution of simulation data with res

%Animation Loop
for i = 2:length(t)  /res
  
  i = i*res;

  delete(cart)
  cart = rectangle(axAni, 'Position',  [ x(i)-.15 yc-.07 .3 .14 ], ...
                          'FaceColor', [ .9 .9 .9 ]                );

  delete(rod1)
  rod1 = plot(axAni, [ x(i) xp(i) ] , [ yc yp(i) ], 'k', 'linewidth', 2 );

  if sqrt( (xpLast-xp(i))^2 + (ypLast-yp(i))^2 ) >= .01   %<--setting
                                                          %   distance
    plot(axAni, xp(i),yp(i), '.', 'color', 'b')           %   between
    xpLast = xp(i);                                       %   points on the
    ypLast = yp(i);                                       %   trajectory
  end

  runT = toc;
  
  drawnow
end      

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/masterThesisReport/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/masterThesisReport/report/figures/';
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


