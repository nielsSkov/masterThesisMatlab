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
  axTheta1 = subplot(3,1,1);
end
plot( t, theta1, 'linewidth', 1.5 )
hold on
plot( t, theta2, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
xlim([min(t) max(t)])
legend( '$\theta_1$', '$\theta_2$', 'location', 'southeast' )

if documentation == 0
  axtheta1D = subplot(3,1,2);
else
  h_thetaDot = figure;
end
plot( t, theta1_dot, 'linewidth', 1.5 )
hold on
plot( t, theta2_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
xlim([min(t) max(t)])
legend( '$\dot{\theta}_1$', '$\dot{\theta}_2$', 'location', 'southeast' )

if documentation == 0
  axtheta1DD = subplot(3,1,3);
else
  h_thetaDotDot = figure;
end
plot( t, theta1_dot_dot, 'linewidth', 1.5 )
hold on
plot( t, theta2_dot_dot, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{\theta}$ [rad$\cdot$s$^{-2}$]')
xlim([min(t) max(t)])
legend( '$\ddot{\theta}_1$', '$\ddot{\theta}_2$', 'location', 'southeast' )

if documentation == 0
  axesXTheta = [ axX axXD axXDD axTheta1 axtheta1D axtheta1DD ];
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
xlim([min(t) max(t)])
ylim([min(i_a)-.5 max(i_a)+.5])
plot(xlim,[i_max i_max], 'r', 'linewidth', 1.5 )
legend( 'Motor Current',          ...
        'Moving RMS of $i_a$',    ...
        'Max Continuous Current', ...
        'location', 'southeast'   )

%plot trajectory in theta1-plane
h_phase = figure;
if documentation == 0
  subplot(3,1,[1 2]);
end
%if con == 1 || con == 2 || con == 4
%  run('addPhasePortrait.m')
%  hold on
%end
plot( theta1, theta1_dot, 'linewidth', 1.5, 'color', matlabBlue )
grid on
run('piAxes.m')
axis equal
theta1Lim = max( abs(min(theta1_dot)), max(theta1_dot) );
axis([-3*pi 5*pi -theta1Lim-.5 theta1Lim+.5])
xlabel('$\theta_1$ [rad]')
ylabel('$\dot{\theta}_1$ [rad$\cdot$s$^{-1}$]')
aspectRatioPhasePlot = pbaspect;

%plot difference in energy over time
if documentation == 0
  subplot(3,1,3);
else
  h_Edelta = figure;
end
plot( t, E_delta1, 'linewidth', 1.5 )
hold on
plot( t, E_delta2, 'linewidth', 1.5 )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$E_\Delta$ [J]')
xlim([min(t) max(t)])
if documentation == 1
  pbaspect(aspectRatioPhasePlot)
end
legend( '$E_{\Delta_1}$', '$E_{\Delta_2}$', 'location', 'southeast' )

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