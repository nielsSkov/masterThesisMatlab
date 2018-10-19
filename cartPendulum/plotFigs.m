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
ylim([min(i_a)-.5 max(i_a)+.5])
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
run('piAxes.m')
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
xlim([min(t) max(t)])
pbaspect(aspectRatioPhasePlot)

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
  run('piAxes.m')
  axis equal
  x3Lim = max( abs(min(x3_2)), max(x3_1) );
  axis([-3*pi 5*pi -x3Lim-.5 x3Lim+.5])
  %
  %add equilibrium-points
  plot(0,0, 'color', [ 0 .55 0 ], 'marker', '.', 'markersize', 18)
  plot(2*pi,0, 'color', [ 0 .55 0 ], 'marker', '.', 'markersize', 18)
end