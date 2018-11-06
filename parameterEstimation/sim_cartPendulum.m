function  y = sim_cartPendulum(u,t,par)
%         u = input vector
%         t = time vector
%       par = parameters for estimation

%disabling all options for ODE45 model function
fComp = 0;
slm   = 0;
noLim = 0;
iaLim = 0;
conX  = 0;

%enable input vector option for ode45
con   = -1;

%setting known parameters for cart pendulum
run('initCartPendulum.m')

%setting estimated parameters
% b_p_c = par(1);
% b_p_v = par(2);

b_c_c = par(1);
b_c_v = par(2);
M     = par(3);

%setting pendulum and length to be without mass for cart estimations
m = 0;
l = 0;

%setting initial values for simulation
theta_0     = 0;
x_0         = 0;
theta_dot_0 = 0;
x_dot_0     = 0;

%setting time and initial values for ODE45 solver
tspan = t;
tvec  = t;
init  = [ theta_0 x_0 theta_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[~, q] = ode45( @(tODE,q) simCartPendulum( tODE, q, u, tvec,           ...
                                           con, conX, slm, noLim, ...
                                           iaLim, m, M, l, g,     ...
                                           k_tanh, r, k_tau,      ...
                                           b_p_c, b_p_v,          ...
                                           b_c_c, b_c_v, fComp    ),  ...
                      tspan, init, options                               );

%assigning results of ode45 simulation
theta      =  q(:,1);
%x         =  q(:,2);
%theta_dot =  q(:,3);
%x_dot     =  q(:,4);

y = theta;