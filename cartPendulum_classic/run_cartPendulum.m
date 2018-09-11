clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/cartPendulum_classic

run('latexDefaults.m')

run('initCartPendulum.m')

%setting cart frictions to zero to see behaviour of cart
b_c_c = 0;
b_c_v = 0;
M = M/3;

%----------SIMULATION ODE45------------------------------------------------

%initial conditions for ode45
theta_0      = pi/4;
x_0          = 0;
theta_dot_0  = 0;
x_dot_0      = 0;

%sample time and final time [s]
Ts      = .01;
T_final = 10;

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ theta_0 x_0 theta_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

con = 0; %select control in sim, first trajectory

%run ode45 simulation
[t, q] = ode45( @(t,q)                                      ...
                simCartPendulum( t, q, con, m, M, l,    ...
                                 g, k_tanh, r, k_tau,   ...
                                 b_p_c, b_p_v,          ...
                                 b_c_c, b_c_v           ),  ...
                        tspan, init, options                );

%assigning results of ode45 simulation
theta     =  q(:,1);
x         =  q(:,2);
theta_dot =  q(:,3);
x_dot     =  q(:,4);

%initializing 2nd derivatives and amature current
theta_dot_dot = zeros(size(t));
x_dot_dot     = zeros(size(t));
i_a           = zeros(size(t));

%run ode45 simulation
[t, q] = ode45( @(t,q)                                        ...
                    simCartPendulum( t, q, con, m, M, l,  ... 
                                     g, k_tanh, r, k_tau, ...
                                     b_p_c, b_p_v,        ...
                                     b_c_c, b_c_v         ),  ...
                            tspan, init, options              );

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta_dot_dot(i), ...
       x_dot_dot(i),     ...
       i_a(i) ]  = simCartPendulum( t(i), q(i,:), con, m, M, l, ...
                                    g, k_tanh, r, k_tau,        ...
                                    b_p_c, b_p_v,               ...
                                    b_c_c, b_c_v                );
end


%----------ANIMATION-------------------------------------------------------

xp = x + l*sin(theta);
yp = l + l*cos(theta);
yc = l;

%Initializing Animation Figure
figure
grid on, grid minor
axis equal
axis([ -1 1 0 1 ])
hold on

%Initializing Moving Objects and Trajectory
scatter(xp(1), yp(1), '.', 'b')
xpLast = xp(1);
ypLast = yp(1);
cart = rectangle('Position',[ x(1)-.15 yc-.07 .3 .14 ]);
rod1 = plot( [ x(1) xp(1) ] , [ yc yp(1) ], 'k', 'linewidth', 3);
drawnow

%for testing timing
% t_test1 = zeros(length(t),1);
% t_test2 = zeros(length(t),1);

tic;

res = 1; % deviding resolution of simulation data with res

%Animation Loop
for i = 2:length(t)  /res
  
  i = i*res;

  delete(cart)
  cart = rectangle( 'Position',  [ x(i)-.15 yc-.07 .3 .14 ], ...
                    'FaceColor', [ .9 .9 .9 ]);

  delete(rod1)
  rod1 = plot( [ x(i) xp(i) ] , [ yc yp(i) ], 'k', 'linewidth', 2 );

  if sqrt( (xpLast-xp(i))^2 + (ypLast-yp(i))^2 ) >= .01   %<--setting
                                                          %   distance
    plot(xp(i),yp(i), '.', 'color', 'b')                  %   between
    xpLast = xp(i);                                       %   points on the
    ypLast = yp(i);                                       %   trajectory
  end

  runT = toc;
  
  %for testing timing
  % t_test1(i/res) = t(i);
  % t_test2(i/res) = runT;

  %if runT < t(i)
  %  pauses(t(i)-runT)
  %end

  drawnow
end

%for testing timing
% figure;
% plot(t_test1(1:round(i/res)))
% hold on
% plot(t_test2(1:round(i/res)))