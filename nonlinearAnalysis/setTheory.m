clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/nonlinearAnalysis

run('latexDefaults.m')

syms m g l J k
syms theta theta_dot

thetaDot_p =  ( -2*m*g*l*(cos(theta)-1)/J ).^(1/2);
thetaDot_m = -( -2*m*g*l*(cos(theta)-1)/J ).^(1/2);

d_thetaDot_d_theta_p = diff(thetaDot_p,theta)
d_thetaDot_d_theta_m = diff(thetaDot_m,theta)

%syms theta(t)
%theta_dot = diff(theta,t);

%system dynamics
%theta_dot_dot = (m*l*cos(theta)*a_c + m*g*l*sin(theta)) /J;

%energy error/difference
E_delta = (1/2)*J*(theta_dot^2) + m*g*l*( cos(theta) - 1 );

%control law
a_c = -k*E_delta*cos(theta)*theta_dot;

theta_dot_dot = (m*l*cos(theta)*a_c + m*g*l*sin(theta)) /J;

slope_p = subs(theta_dot_dot,theta_dot,thetaDot_p)/thetaDot_p
slope_m = subs(theta_dot_dot,theta_dot,thetaDot_m)/thetaDot_m


%-----phase portrait of simplified system----------------------------------

run('initCartPendulum.m')
J = m*l^2;

k = 1.3;
f = @(t,z) [   z(2)                                         ... = z1_dot
               (m*l*cos(z(1))*(-k*((1/2)*J*(z(2)^2)       + ...
             + m*g*l*( cos(z(1)) - 1 ))*cos(z(1))*z(2))   + ...
             + m*g*l*sin(z(1))) /J                          ... = z2_dot
                                                           ];
%range in which to generate the phase portrait
z1_min = -6*pi;
z1_max =  6*pi;
z2_min = -6*pi;
z2_max =  6*pi;

%number of points between z_min and z_max
z1_res = 30;
z2_res = 20;

%creates a vector along z1 and an other along z2
z1_vec = linspace( z1_min, z1_max, z1_res );
z2_vec = linspace( z2_min, z2_max, z2_res );

%creates a z1-z2-grid consisting of two matrices
%one with all z1-values in the grid and
%one with all the cooresponding z2-values in the grid
[ z1_grid, z2_grid ] = meshgrid( z1_vec, z2_vec );

%matrices for the derivatives
z1_dot_grid = zeros(size(z1_grid));
z2_dot_grid = zeros(size(z1_grid));

%to get initial direction for all vectors in the field 
t=0;

%calculating a grid of x1_dot-values and another of x2_dot-values
for i = 1:numel(z1_grid)

  z_dot = f( t, [z1_grid(i); z2_grid(i)] );

  %creating grid of derivatives
  z1_dot_grid(i) = z_dot(1);
  z2_dot_grid(i) = z_dot(2);
end

normalizeQuiver = 0;

%normalize vectors
if normalizeQuiver
  du = z1_dot_grid;
  dw = z2_dot_grid;
  z1_dot_grid=du./sqrt(du.^2+dw.^2);
  z2_dot_grid=dw./sqrt(du.^2+dw.^2);

  scaleQuiver = .3;
else
  scaleQuiver = 1.8;
end

h_setPlot = figure;

quiver( z1_grid,     z2_grid,      ...
        z1_dot_grid, z2_dot_grid , ...
        scaleQuiver,               ...
        'color', '[ .3 .3 .5 ]' );

hold on


run('initCartPendulum.m')
J = m*l^2;
theta_max     = 2*pi;
theta_dot_max = 4*pi;
E_delta_max = (1/2)*J*(theta_dot_max^2) + m*g*l*( cos(theta_max) - 1 );
V_max = (1/2)*E_delta_max^2;
c = V_max

%constructing set A = { x in Omega_c | E_Delta = 0 }
x1   = 0:.01:2*pi;
J    = m*l^2;
%
x3_1 =  ( -2*m*g*l*(cos(x1)-1)/J ).^(1/2);
x3_2 = -( -2*m*g*l*(cos(x1)-1)/J ).^(1/2);

%include last point
x1   = [ x1 2*pi ];
x3_1 = [ x3_1 0];
x3_2 = [ x3_2 0];

%add set Omega_c
hO = fill( [x1 flip(x1)],                           ...
           [ x3_1 flip(x3_2) ], [.8 .8 .8],         ...
                                'edgecolor','none', ...
                                'facealpha', '.3'   );

%plotting set A
hA1 = plot(x1,x3_1, 'color', [ 0 .55 0 ], 'linewidth', 1.5 );
hA2 = plot(x1,x3_2, 'color', [ 0 .55 0 ], 'linewidth', 1.5 );

%add set B = { x in Omega_c | cos(theta) = 0 } => theta = +-pi/2

B_lim =  ( -2*m*g*l*(cos(pi/2)-1)/J ).^(1/2)+.05;

hB1 = plot( [   pi/2   pi/2], [ -B_lim B_lim], 'color', [ 0 0 .8 ], ...
                                               'linewidth', 1.5     );

hB2 = plot( [ 3*pi/2 3*pi/2], [ -B_lim B_lim], 'color', [ 0 0 .8 ], ...
                                               'linewidth', 1.5     );

%add set C = { x in Omega_c | theta_dot = 0 }
hC = plot( [ 0-.05; 2*pi+.05;], [ 0 0 ], 'color', [ .8 0 0 ], ...
                                         'linewidth', 1.5     );

%add set F = { x in Omega_c | theta_dot = 0 | theta = 0  }
%plot( 0,0,    'color', [ .8 0 0 ], 'marker', '.', 'markersize', 18)

hF = plot( pi, 0, 'color', 'none',                ...
                  'MarkerEdgeColor', [ 0 .55 0 ], ...
                  'marker', '.',                  ...
                  'markersize', 14);
%plot( 2*pi,0, 'color', [ .8 0 0 ], 'marker', '.', 'markersize', 18)

[h_lgnd,h_graphic_lgnd] = legend([hO hA1 hB1 hC hF],            ...
                          '$\Omega_c$','$A$','$B$','$C$','$F$', ...
                          'location', 'southeast'               );

patch = findobj(h_graphic_lgnd, 'type', 'patch');
set(patch(1), 'FaceAlpha', .3);

%general plot options
xlabel('$\theta$ [rad]')
ylabel('$\dot{\theta}$ [rad$\ \cdot\ $s$^{-1}$]')
axis tight equal;
x3Lim = max( abs(min(x3_2)), max(x3_1) );
axis([-3*pi 5*pi -x3Lim-.5 x3Lim+.5])
grid on
run('piAxes.m')

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1='~/syncDrive/uni/thesis/report/report/figures/original/';                 %#ok<UNRCH>
  figurePath2='~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig="fig";

  for jj = 1:1:1
    switch jj
    case 1
      figHandle=h_setPlot;
      fileName='setPlot';
      saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end