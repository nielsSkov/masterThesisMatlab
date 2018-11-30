clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twin

run('latexDefaults.m')

run('initTwin.m')

%define variable for default matlab plot color
matlabBlue = [0 0.4470 0.7410];

noFriction     = 0;
noCartFriction = 1;

documentation = 1; %figures are plottet seperately if documentation is on

if noFriction
  b_c_c = 0; b_c_v = 0; b_p_c = 0; b_p_v = 0;
elseif noCartFriction
  b_c_c = 0; b_c_v = 0;
end

%----------SIMULATION ODE45------------------------------------------------

%!!!!!IS SET TO 1 IN simTwin.m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
con = 4; %select control in sim, first trajectory

%initial conditions for ode45
if con == 0
  theta1_0         = -pi/7;
  theta2_0         = +pi/8;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
elseif con == 1
  theta1_0         = -.02;
  theta2_0         =  .023;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
elseif con == 4
  theta1_0         = pi+.05;
  theta2_0         = pi+.05;
  x_0              = 0;
  theta1_dot_0     = 0;
  theta2_dot_0     = 0;
  x_dot_0          = 0;
end

%sample time and final time [s]
Ts      = .01;

if con == 0
  T_final = 10;
elseif con == 1
  T_final = 7;
elseif con == 4
  T_final = 10;
end

%initialization for ode45
tspan = 0:Ts:T_final;
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
E_delta        = zeros(size(t));
E_T            = zeros(size(t));

%run ode45 simulation
[t, q] = ode45( @(t,q)                                     ...
                simTwin( t, q, con, m1, m2, M, l1, l2,     ...
                         g, k_tanh, r, k_tau,              ...
                         b_p1_c, b_p1_v,                   ...
                         b_p2_c, b_p2_v,                   ...
                         b_c_c, b_c_v                   ), ...
                tspan, init, options                           );

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta1_dot_dot(i),  ...
        theta2_dot_dot(i), ...
        x_dot_dot(i),      ...
        i_a(i),            ...
        E_delta(i),        ...
        E_T(i)     ]   = simTwin( t(i), q(i,:), con, m1, m2, M, l1, l2, ...
                                  g, k_tanh, r, k_tau,                  ...
                                  b_p1_c, b_p1_v,                       ...
                                  b_p2_c, b_p2_v,                       ...
                                  b_c_c, b_c_v                          );
end

windowSize = 1/Ts;  %= 1 s long window
for i = 1:length(t)-windowSize
  ia_rms(i) = rms( i_a(i:i+windowSize) );
end


%run('plotFigs.m')

%% ----------ANIMATION-----------------------------------------------------
run('animation.m')

