
% crop1 = length(t(t<13.51))+110;
% x             = x(1:crop1);
% x_dot         = x_dot(1:crop1);
% x_dot_dot     = x_dot_dot(1:crop1);
% theta         = theta(1:crop1);
% theta_dot     = theta_dot(1:crop1);
% theta_dot_dot = theta_dot_dot(1:crop1);
% i_a           = i_a(1:crop1);
% ia_rms        = ia_rms(1:crop1);
% E_delta       = E_delta(1:crop1);
% t             = t(1:crop1);

%plot all states
h_x = figure;
if documentation == 0
  axX = subplot(3,1,1);
end
plot( t, x, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$x$ [m]')
xlim([min(t) max(t)-1.1])

if documentation == 0
  axXD = subplot(3,1,2);
else
  h_xDot = figure;
end
plot( t, x_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
xlim([min(t) max(t)-1.1])

if documentation == 0
  axXDD = subplot(3,1,3);
else
  h_xDotDot = figure;
end
plot( t, x_dot_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{x}$ [m$\cdot$s$^{-2}$]')
xlim([min(t) max(t)-1.1])

h_theta = figure;
if documentation == 0
  axTheta = subplot(3,1,1);
end
plot( t, theta, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
ax = gca; ax.YDir = 'reverse'; %reverse y-axis for angle
if ~(con == 0 && slm == 1)
  yPI = 1; xPI = 0; run('piAxes.m')
end
xlim([min(t) max(t)-1.1])
if ~(con == 0 && slm == 1)
  ylim([ -.5 2*pi])
end

if documentation == 0
  axThetaD = subplot(3,1,2);
else
  h_thetaDot = figure;
end
plot( t, theta_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
if ~(con == 0 && slm == 1)
  yPI = 1; xPI = 0; run('piAxes.m')
end
xlim([min(t) max(t)-1.1])
ylim([min(theta_dot)-.5 max(theta_dot)+.5 ])

if documentation == 0
  axThetaDD = subplot(3,1,3);
else
  h_thetaDotDot = figure;
end
plot( t, theta_dot_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{\theta}$ [rad$\cdot$s$^{-2}$]')
%yPI = 1; xPI = 0; run('piAxes.m')
xlim([min(t) max(t)-1.1])
ylim([min(theta_dot_dot)-.5 max(theta_dot_dot)+.5 ])

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
i_max = 4.58;
xlim([min(t) max(t)-1.1])
ylim([min(i_a)-.5 max(i_a)+.5])
plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
legend( 'Motor Current',          ...
        'Moving Average RMS of $i_a$',    ...
        'Max Continuous Current', ...
        'location', 'southeast'   )

%plot trajectory in theta-plane
h_phase = figure;
if documentation == 0
  subplot(3,1,[1 2]);
end
if con == 1 || con == 2 || con == 4
  run('addPhasePortrait.m')
  hold on
end
plot( theta(1:end-110), theta_dot(1:end-110), ...
      'linewidth', 1.5, 'color', matlabBlue     )
grid on
yPI = 1; xPI = 1; run('piAxes.m')
axis equal
thetaLim = max( abs(min(theta_dot)), max(theta_dot) );
axis([-3*pi 5*pi -thetaLim-.5 thetaLim+.5])
xlabel('$\theta$ [rad]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
aspectRatioPhasePlot = pbaspect;

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
xlim([min(t) max(t)-1.1])
ylim([min(E_delta) max(E_delta)+.2])
if documentation == 1
  pbaspect(aspectRatioPhasePlot)
end

% figure
% xlim([min(t) max(t)])
% E_min = M*g*l;
% plot(xlim,[E_min E_min], 'r', 'linewidth', 1.5 )
% hold on
% plot( t, E_T, 'linewidth', 1.5 )
% grid on, grid minor
% xlim([min(t) max(t)])
% xlabel('$t$ [s]')
% ylabel('$E_{total}$ [J]')
% legend( 'Energy at Rest', ...
%         'Total Energy',   ...
%         'location', 'northeast'   )

if plotOrbit
  h_orbit = figure;
  %
  x1   = 0:.0001:2*pi;
  J    = m*l^2;
  %
  x3_1 =  ( -2*m*g*l*(cos(x1)-1)/J ).^(1/2);
  x3_2 = -( -2*m*g*l*(cos(x1)-1)/J ).^(1/2);
  %
  plot(x1,x3_1, 'color', [ 0 0 .8 ], 'linewidth', 1.5 )
  hold on
  plot(x1,x3_2, 'color', [ 0 0 .8 ], 'linewidth', 1.5 )
  grid on, grid minor
  xlabel('$\theta$')
  ylabel('$\dot{\theta}$')
  yPI = 1; xPI = 1; run('piAxes.m')
  axis equal
  x3Lim = max( abs(min(x3_2)), max(x3_1) );
  axis([-3*pi 5*pi -x3Lim-.5 x3Lim+.5])
  %
  %add equilibrium-points
  plot(0,0, 'color', [ 0 .55 0 ], 'marker', '.', 'markersize', 18)
  plot(2*pi,0, 'color', [ 0 .55 0 ], 'marker', '.', 'markersize', 18)
end