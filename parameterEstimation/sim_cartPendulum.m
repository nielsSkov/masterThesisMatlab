function  y = sim_cartPendulum(u,t,par)
%         u = input vector
%         t = time vector
%       par = parameters for estimation

%setting known parameters for cart pendulum
run('initCartPendulum.m')

%setting estimated parameters
% b_p_c = par(1);
% b_p_v = par(2);

b_c_c_p = par(1);
b_c_c_m = par(2);
%b_c_v   = par(3);
%M       = par(4);

b_c_v   = evalin('base', 'b_c_v');
M       = evalin('base', 'M');

%setting pendulum and length to be without mass for cart estimations
m = 0;
l = 0;

%setting initial values for simulation
%theta_0     = 0;
x_0     = evalin('base', 'x_0');
x_dot_0 = evalin('base', 'x_dot_0');

%setting time and initial values for ODE45 solver
tspan = t;
tvec  = t;
init  = [ x_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[~, q] = ode45( @(tODE,q) simCart( tODE, q, u, tvec, m, M, l, g,     ...
                                   k_tanh, r, k_tau, b_p_c, b_p_v,   ...
                                   b_c_c_p, b_c_c_m, b_c_v        ), ...
                      tspan, init, options                              );

%assigning results of ode45 simulation
x      =  q(:,1);
x_dot  =  q(:,2);

y = x;