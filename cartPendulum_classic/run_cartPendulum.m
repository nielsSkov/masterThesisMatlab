clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/cartPendulum_classic

run('latexDefaults.m')

run('initCartPendulum.m')

noFriction     = 0;
noCartFriction = 1;
noMass         = 0; % no mass of cart, M

if noFriction
  b_c_c = 0; b_c_v = 0; b_p_c = 0; b_p_v = 0;
elseif noCartFriction
  b_c_c = 0; b_c_v = 0;
end

if noMass
    %M = 1e-12;
    M = 1;
end

%----------SIMULATION ODE45------------------------------------------------

con = 3; %select control in sim

%initial conditions for ode45 based on controller choise
switch con
  case 0
    theta_0      = pi/4;
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
    theta_dot_0  = pi+.308;  %<-- this is a problem
    x_dot_0      = 0;
  case 3
    theta_0      = pi;
    x_0          = 0;
    theta_dot_0  = -6;  %<-- this is a problem
    x_dot_0      = 0;
end

%sample time and final time [s]
Ts      = .01;

%choose simulation length based on controller choise
switch con
  case 0
    T_final = 7;
  case 1
    T_final = 30;
  case 2
    T_final = 15;
  case 3
    T_final = 15;
end

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ theta_0 x_0 theta_dot_0 x_dot_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%run ode45 simulation
[t, q] = ode45( @(t,q)                                       ...
                simCartPendulum( t, q, con, m, M, l,    ...
                                 g, k_tanh, r, k_tau,   ...
                                 b_p_c, b_p_v,          ...
                                 b_c_c, b_c_v           ),   ...
                tspan, init, options                            );

%assigning results of ode45 simulation
theta     =  q(:,1);
x         =  q(:,2);
theta_dot =  q(:,3);
x_dot     =  q(:,4);

%initializing 2nd derivatives, amature current and difference in energy
theta_dot_dot = zeros(size(t));
x_dot_dot     = zeros(size(t));
i_a           = zeros(size(t));
E_delta       = zeros(size(t));

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
       i_a(i),           ...
       E_delta(i)           ]  = simCartPendulum( t(i), q(i,:),        ...
                                                  con, m, M, l,        ...
                                                  g, k_tanh, r, k_tau, ...
                                                  b_p_c, b_p_v,        ...
                                                  b_c_c, b_c_v         );
end


omega_0 = sqrt(m*g*l/(m*(l^2)));

E_p = m*g*l*( (1/2)*((theta_dot/omega_0).^2) + cos(theta) - 1    ...
              + (1/2)*(m/(m*g*l))*(x_dot.^2)                     ...
              + (m*l/(m*g*l)).*cos(theta).*theta_dot.*x_dot )    ;
% 
% E_p_test = m*g*l*( (1/2)*((theta_dot/omega_0).^2) + cos(theta) - 1 );
% 
% E_p_test2 = m*g*l*(   (1/2)*(m/(m*g*l))*(x_dot.^2)                  ...
%                     + (m*l/(m*g*l)).*cos(theta).*theta_dot.*x_dot ) ;
% 
% subplot(2,1,1)
% plot(t,E_p_test) %Åstrøm
% hold on
% scatter(t,E_p,'.') %Niels
% 
% plot(t,E_p_test2) %Niels-Åstrøm
% 
% legend('Aastrom','Niels','Niels-Aastrom')
% grid on, grid minor
% 
% subplot(2,1,2)
% plot(t,theta)
% grid on, grid minor

%plot trajectory in theta-plane with respect to x_dot
figure
plot3( theta, theta_dot, x_dot, 'linewidth', 1.5 )
grid on, grid minor
axis equal
xlabel('$\theta$')
ylabel('$\dot{\theta}$')
zlabel('$\dot{x}$')

%plot difference in energy over time
figure
plot( t, E_delta, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$E_\Delta$ [J]')
hold on
plot( t, E_p, 'linewidth', 1.5 )

%% ----------ANIMATION-------------------------------------------------------

xp = x + l*sin(theta);
yp = l + l*cos(theta);
yc = l;

%Initializing Animation Figure
figure
axAni = axes;
grid on, grid minor
axis equal
hold on

%setting axis limits depending on controller choise
switch con
  case 0
    axis([ -1 1 0 1 ])
  case 1
    axis([ -1 2 0 1 ])
  case 2
    axis([ -1 1 0 1 ])
  case 3
    axis([ -1 1 0 1 ])
end

%Initializing Moving Objects and Trajectory
scatter(axAni, xp(1), yp(1), '.', 'b')
xpLast = xp(1);
ypLast = yp(1);
cart = rectangle('Position',[ x(1)-.15 yc-.07 .3 .14 ]);
rod1 = plot(axAni, [ x(1) xp(1) ] , [ yc yp(1) ], 'k', 'linewidth', 3);
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
  cart = rectangle(axAni, 'Position',  [ x(i)-.15 yc-.07 .3 .14 ], ...
                          'FaceColor', [ .9 .9 .9 ]                   );

  delete(rod1)
  rod1 = plot(axAni, [ x(i) xp(i) ] , [ yc yp(i) ], 'k', 'linewidth', 2 );

  if sqrt( (xpLast-xp(i))^2 + (ypLast-yp(i))^2 ) >= .01   %<--setting
                                                          %   distance
    plot(axAni, xp(i),yp(i), '.', 'color', 'b')           %   between
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