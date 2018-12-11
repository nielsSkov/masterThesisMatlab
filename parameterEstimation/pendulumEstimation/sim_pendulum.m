function  y = sim_pendulum(u,t,par)
%         u = input vector
%         t = time vector
%       par = parameters for estimation

%setting known parameters for cart pendulum
run('initCartPendulum.m')

%setting estimated parameters
b_p_c = par(1);            % pendulum coulomb friction   [N m]
b_p_v = par(2);            % pendulum viscous friction   [N m s]

%setting initial values for simulation
theta_0     = evalin('base', 'theta_0');
theta_dot_0 = evalin('base', 'theta_dot_0');

%setting time and initial values for ODE45 solver
tspan = t;
init  = [ theta_0 theta_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[~, q] = ode45( @(tODE,q) simPendulum( tODE, q, m, l, g,     ...
                                       k_tanh, b_p_c, b_p_v ),      ...
                      tspan, init, options                              );

%assigning results of ode45 simulation
theta      =  q(:,1);
theta_dot  =  q(:,2);

y = theta;