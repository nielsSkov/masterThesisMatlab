%plot all states
h_x = figure;
if documentation == 0
  axX = subplot(3,1,1);
end
plot( t, x, 'linewidth', 1.5, 'color', matlabBlue )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$x$ [m]')
xlim([min(t) max(t)-1.1])

if documentation == 0
  axXD = subplot(3,1,2);
else
  h_xDot = figure;
end
plot( t, x_dot, 'linewidth', 1.5, 'color', matlabBlue )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{x}$ [m$\cdot$s$^{-1}$]')
xlim([min(t) max(t)-1.1])

if documentation == 0
  axXDD = subplot(3,1,3);
else
  h_xDotDot = figure;
end
plot( t, x_dot_dot, 'linewidth', 1.5, 'color', matlabBlue )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{x}$ [m$\cdot$s$^{-2}$]')
xlim([min(t) max(t)-1.1])

h_theta = figure;
if documentation == 0
  axTheta1 = subplot(3,1,1);
end
plot( t, theta1, 'linewidth', 1.5, 'color', matlabBlue )
hold on
plot( t, theta2, 'linewidth', 1.5, 'color', matlabRed )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\theta$ [rad]')
if con == 4
  yPI = 1; xPI = 0; run('piAxes.m')
  ylim([ -.5  2*pi+.5 ])
end
xlim([min(t) max(t)-1.1])
legend( '$\theta_1$', '$\theta_2$', 'location', 'southwest' )
if documentation == 1 && con == 4
  pbaspect(aspectRatioAni)
end

if documentation == 0
  axtheta1D = subplot(3,1,2);
else
  h_thetaDot = figure;
end
plot( t, theta1_dot, 'linewidth', 1.5, 'color', matlabBlue )
hold on
plot( t, theta2_dot, 'linewidth', 1.5, 'color', matlabRed )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
%yPI = 1; xPI = 0; run('piAxes.m')
xlim([min(t) max(t)-1.1])
legend( '$\dot{\theta}_1$', '$\dot{\theta}_2$', 'location', 'southeast' )

if documentation == 0
  axtheta1DD = subplot(3,1,3);
else
  h_thetaDotDot = figure;
end
plot( t, theta1_dot_dot, 'linewidth', 1.5, 'color', matlabBlue )
hold on
plot( t, theta2_dot_dot, 'linewidth', 1.5, 'color', matlabRed )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$\ddot{\theta}$ [rad$\cdot$s$^{-2}$]')
%yPI = 1; xPI = 0; run('piAxes.m')
xlim([min(t) max(t)-1.1])
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
xlim([min(t) max(t)-1.1])
ylim([min(i_a)-.5 max(i_a)+.5])
plot(xlim,[i_max i_max], 'linewidth', 1.5, 'color', matlabRed )
legend( 'Motor Current',          ...
        'Moving Average RMS of $i_a$',    ...
        'Max Continuous Current', ...
        'location', 'southeast'   )

%plot trajectories in theta-plane
h_phase = figure;
if documentation == 0
  subplot(3,1,[1 2]);
end
%if con == 1 || con == 2 || con == 4
%  run('addPhasePortrait.m')
%  hold on
%end
plot( theta1(1:end-164), theta1_dot(1:end-164), ...
      'linewidth', 1.5, 'color', matlabBlue     )
hold on
plot( theta2(1:end-164), theta2_dot(1:end-164), ...
      'linewidth', 1.5, 'color', matlabRed      )
%grid on
yPI = 1; xPI = 1; run('piAxes.m')
axis equal
theta2Lim = max( abs(min(theta2_dot)), max(theta2_dot) );
axis([-3*pi 5*pi -theta2Lim-.5 theta2Lim+.5])
xlabel('$\theta$ [rad]')
ylabel('$\dot{\theta}$ [rad$\cdot$s$^{-1}$]')
legend( '$\theta_1$', '$\theta_2$', 'location', 'southeast' )
aspectRatioPhasePlot = pbaspect;
grid on, grid minor

%plot difference in energy over time
if documentation == 0
  subplot(3,1,3);
else
  h_Edelta = figure;
end
plot( t, E_delta1, 'linewidth', 1.5, 'color', matlabBlue )
hold on
plot( t, E_delta2, 'linewidth', 1.5, 'color', matlabRed )
grid on, grid minor
xlabel('$t$ [s]')
ylabel('$E_\Delta$ [J]')
xlim([min(t) max(t)-1.1])
if documentation == 1
  pbaspect(aspectRatioPhasePlot)
end
legend( '$E_{\Delta_1}$', '$E_{\Delta_2}$', 'location', 'southeast' )