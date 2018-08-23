clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/twin

run('latexDefaults.m')

run('initTwin.m')

%----------SIMULATION ODE45------------------------------------------------

%initial conditions for ode45
theta1_0         = pi/7;
theta2_0         = pi/8;
x_0              = 0;
theta1_dot_0     = 0;
theta2_dot_0     = 0;
x_dot_0          = 0;

%sample time and final time [s]
Ts      = .01;
T_final = 10;

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ theta1_0 theta2_0 x_0 theta1_dot_0 theta2_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

con = 0; %select control in sim, first trajectory

%run ode45 simulation
[t, q] = ode45( @(t,q)                                     ...
                simTwin( t, q, con, m1, m2, M, l1, l2,     ...
                         g, k_tan, r, k_tau,               ...
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

%run ode45 simulation
[t, q] = ode45( @(t,q)                                     ...
                simTwin( t, q, con, m1, m2, M, l1, l2,     ...
                         g, k_tan, r, k_tau,               ...
                         b_p1_c, b_p1_v,                   ...
                         b_p2_c, b_p2_v,                   ...
                         b_c_c, b_c_v                   ), ...
                tspan, init, options                           );

%calculating/simulating 2nd derivatives
for i = 1:length(t)

  [ ~, theta1_dot_dot(i), ...
        theta2_dot_dot(i), ...
        x_dot_dot(i),      ...
        i_a(i) ]  = simTwin( t(i), q(i,:), con, m1, m2, M, l1, l2, ...
                             g, k_tan, r, k_tau,                   ...
                             b_p1_c, b_p1_v,                       ...
                             b_p2_c, b_p2_v,                       ...
                             b_c_c, b_c_v                          );
end


%----------ANIMATION-------------------------------------------------------

xp1 = x  + l1*sin(theta1);
xp2 = x  + l2*sin(theta2);
yp1 = l1 + l1*cos(theta1);
yp2 = l1 + l2*cos(theta2);
yc  = l1;

%Initializing Animation Figure
figure
grid on, grid minor
axis equal
axis([ -1 1 0 1 ])
hold on

%Initializing Moving Objects and Trajectory
scatter(xp1(1), yp1(1), '.', 'b')
scatter(xp2(1), yp2(1), '.', 'r')
xp1Last = xp1(1);
xp2Last = xp2(1);
yp1Last = yp1(1);
yp2Last = yp2(1);
cart = rectangle('Position',[ x(1)-.15 yc-.07 .3 .14 ]);
rod1 = plot( [ x(1) xp1(1) ] , [ yc yp1(1) ], 'k', 'linewidth', 3);
rod2 = plot( [ x(1) xp2(1) ] , [ yc yp2(1) ], 'k', 'linewidth', 3);
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
  rod1 = plot( [ x(i) xp1(i) ] , [ yc yp1(i) ], 'k', 'linewidth', 2 );
  
  delete(rod2)
  rod2 = plot( [ x(i) xp2(i) ] , [ yc yp2(i) ], 'k', 'linewidth', 2 );

  if sqrt( (xp1Last-xp1(i))^2 + (yp1Last-yp1(i))^2 ) >= .01%<--setting
                                                           %  distance
    plot(xp1(i),yp1(i), '.', 'color', 'b')                 %  between
    xp1Last = xp1(i);                                      %  points on the
    yp1Last = yp1(i);                                      %  trajectory
  end
  
  if sqrt( (xp2Last-xp2(i))^2 + (yp2Last-yp2(i))^2 ) >= .01%<--setting
                                                           %  distance
    plot(xp2(i),yp2(i), '.', 'color', 'r')                 %  between
    xp2Last = xp2(i);                                      %  points on the
    yp2Last = yp2(i);                                      %  trajectory
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