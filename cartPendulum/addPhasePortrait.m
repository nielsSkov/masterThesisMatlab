
J = m*l^2;

%-----states-------------
% z1     = theta
% z2     = theta_dot
% z1_dot = theta_dot
% z2_dot = theta_dot_dot

% syms m l M g z1 z2 u;
% alpha = m*(l^2) - ( ((m^2)*(l^2))/(M + m) )*( cos(z1)^2 );
% beta  = ( ((m^2)*(l^2))/(M + m) )*cos(z1)*sin(z1);
% gamma = -m*g*l*sin(z1) - ( (m*l)/(M + m) )*cos(z1)*u;
% 
% z2_dot = simplify(-(beta/alpha)*(z2^2) - gamma/alpha)

% E_delta = (1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1)

%con = 1
% a_c = -k*((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*cos(z(1))*z(2)
% u_last = 0
% u = (M + m)*(-k*((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*cos(z(1))*z(2)) + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*((M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c + m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M + m - m*(cos(z(1))^2)) ))

%con = 2
% a_c = k*sign(-((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*cos(z(1))*z(2))
% u_last = 0
% u = (M + m)*(k*sign(-((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*cos(z(1))*z(2))) + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*((M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c + m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M + m - m*(cos(z(1))^2)) ))

%con = 4
% i_max = 4.58;
% u_max = i_max*k_tau/r;
% a_max = u_max/(M+m) -.1;
% a_c = min( a_max, max(-a_max, -k*((1/2)*J*(z(2)^2) + ...
%       m*g*l*(cos(z(1)) - 1))*sign(cos(z(1))*z(2)) ))
% u_last = 0
% u = (M + m)*(min( a_max, max(-a_max, -k*((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*sign(cos(z(1))*z(2)) ))) + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*((M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c + m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M + m - m*(cos(z(1))^2)) ))


%GENERAL
% u_last = 0
% u = (M + m)*a_c + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*acc
% 
% acc = (M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c +   ...
%       m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + ...
%       cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M +  ...
%       m - m*(cos(z(1))^2)) ) 


if 0
  %--------------simplified system with rudementary control----------------
  k = 1.3;
  f = @(t,z) [ z(2)                                            ... = z1_dot
               (m*l*cos(z(1))*(-k*((1/2)*J*(z(2)^2)      +     ...
             + m*g*l*( cos(z(1)) - 1 ))*cos(z(1))*z(2))  +     ...
             + m*g*l*sin(z(1))) /J                             ... = z2_dot
                                                                ];
elseif con == 0
  %--------------full system with no control-------------------------------
  u = 0;
  f = @(t,z) [ z(2)                                            ... = z1_dot
               (- l*m*cos(z(1))*sin(z(1))*z(2)^2          +    ...
             + u*cos(z(1)) + M*g*sin(z(1))                +    ...
             + g*m*sin(z(1)))/(l*(M + m - m*cos(z(1))^2))      ... = z2_dot
                                                              ];
elseif con == 1
  %--------------full system with rudementary control----------------------
	k = 1.3;
  u_last = 0;
  f = @(t,z) [ z(2)                                            ... = z1_dot
               (- l*m*cos(z(1))*sin(z(1))*z(2)^2             + ...
             + ((M + m)*(-k*((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*cos(z(1))*z(2)) + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*((M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c + m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M + m - m*(cos(z(1))^2)) )))*cos(z(1)) + M*g*sin(z(1)) + ...
             + g*m*sin(z(1)))/(l*(M + m - m*cos(z(1))^2))      ... = z2_dot
                                                             ];
elseif con == 2
  %--------------full system with sign control-----------------------------
  k = 2.7;
  u_last = 0;
  f = @(t,z) [   z(2)                                         ... = z1_dot
                 (- l*m*cos(z(1))*sin(z(1))*z(2)^2          + ...
               + ((M + m)*(k*sign(-((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*cos(z(1))*z(2))) + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*((M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c + m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M + m - m*(cos(z(1))^2)) )))*cos(z(1)) + M*g*sin(z(1))                + ...
               + g*m*sin(z(1)))/(l*(M + m - m*cos(z(1))^2))   ... = z2_dot
                                                             ];
elseif con == 4
  %--------------full system with sat control------------------------------
  k = 200;
  u_last = 0;
	i_max = 4.58;
  u_max = i_max*k_tau/r;
  a_max = u_max/(M+m) -.1;
  f = @(t,z) [   z(2)                                         ... = z1_dot
                 (- l*m*cos(z(1))*sin(z(1))*z(2)^2          + ...
               + ((M + m)*(min( a_max, max(-a_max, -k*((1/2)*J*(z(2)^2) + m*g*l*(cos(z(1)) - 1))*sign(cos(z(1))*z(2)) ))) + m*l*z(1)*z(2)^2 - m*l*cos(z(1))*((M + m)*( -b_p_v*z(2) -tanh(k_tanh*z(2))*b_p_c + m*g*l*sin(z(1)) )/( (l^2)*m*(M + m - m*cos(z(1))^2) ) + cos(z(1))*(u_last - m*l*sin(z(1))*(z(2)^2))/( l*(M + m - m*(cos(z(1))^2)) )))*cos(z(1)) + M*g*sin(z(1))                + ...
               + g*m*sin(z(1)))/(l*(M + m - m*cos(z(1))^2))   ... = z2_dot
                                                             ];
end

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
t0=0;

%calculating a grid of x1_dot-values and another of x2_dot-values
for i = 1:numel(z1_grid)

  z_dot = f( t0, [z1_grid(i); z2_grid(i)] );

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
  scaleQuiver = 3.5;
  %scaleQuiver = 1;
end

quiver( z1_grid,     z2_grid,      ...
        z1_dot_grid, z2_dot_grid , ...
        scaleQuiver,               ...
        'color', '[ .3 .3 .5 ]' );