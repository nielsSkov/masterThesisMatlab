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
