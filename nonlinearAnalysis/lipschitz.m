clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/nonlinearAnalysis

run('latexDefaults.m')

fn = @(x) real( x.^(1/3) );

x = -10:.2:10;
y = -10:.2:10;

[ gr_x, gr_y ] = meshgrid(x,y);

xd_abs_grid  = zeros(size(gr_x));
xy_diffr_grid = zeros(size(gr_x));
f = zeros(size(gr_x));

for i = 1:length(x)*length(y)
  xd_abs_grid(i)  = abs( fn(gr_x(i)) - fn(gr_y(i)) );
  xy_diffr_grid(i) = abs( gr_x(i)-gr_y(i) );
  f(i)= fn(gr_x(i));
end

L = 4;

mesh(gr_x, gr_y, xd_abs_grid)
hold on
mesh(gr_x, gr_y, L*xy_diffr_grid)
%mesh(gr_x, gr_y, f)

%a (not unique) solution  ( x=0 is also a solution )
t     = 0:.1:7;
x_t   = ( (2/3).*t ).^(3/2);
x_dot = fn(x_t);
plot3(x_t,x_t,x_dot, 'r', 'linewidth', 2)

figure
mesh(gr_x, gr_y, xd_abs_grid./(xy_diffr_grid))

