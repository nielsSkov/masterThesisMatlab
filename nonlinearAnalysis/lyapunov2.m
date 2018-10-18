clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/nonlinearAnalysis

run('latexDefaults.m')

syms l m M g b_p_c b_p_v b_c_c b_c_v k_tanh u

syms x(t) theta(t)

x_dot         = diff(x,t,1);
x_dot_dot     = diff(x,t,2);
theta_dot     = diff(theta,t,1);
theta_dot_dot = diff(theta,t,2);

%excessive to generalized cooredinates
x_p     = - l*sin(theta);
y_p     =  l*( cos(theta) + 1 );
x_p_dot = -l*cos(theta)*theta_dot;
y_p_dot = -l*sin(theta)*theta_dot;

%energy of pendulum
E_p = simplify( m*g*y_p + (1/2)*m*x_p_dot^2 + (1/2)*m*y_p_dot^2 );
%
% E_p = (1/2)*J*(theta_dot^2) + m*g*l*( cos(theta) + 1 )       , J = m*l^2

%energy in unstable equilibrium
E_eq = 2*m*g*l;

%energy error
E_delta = E_p - E_eq;
%
% E_delta = (1/2)*J*(theta_dot^2) + m*g*l*( cos(theta) - 1 )   , J = m*l^2

%energy-based Lyapunov function candidate
V = (1/2)*E_delta^2;

V_dot = simplify( diff(V,t,1) );

E_delta_dot = simplify( diff(E_delta,t,1) );

%inertia
J = m*l^2;

%system dynamics
theta_dot_dot = (m*l*cos(theta)*x_dot_dot + m*g*l*sin(theta)) /J;

%evaluated along trajectories of the system
V_dot = simplify( ...
            subs( V_dot, diff(theta,t,2), theta_dot_dot) );

E_delta_dot = simplify( ...
                  subs( E_delta_dot, diff(theta,t,2), theta_dot_dot) );

theta_dot_dot = diff(theta,t,2);
syms E_delta_sym

V_dot_sym = E_delta_sym*E_delta_dot;

syms x1 x2 x3 x4 x3_dot xa_dot_dot

x_dot         = diff(x,t,1);
x_dot_dot     = diff(x,t,2);
theta_dot     = diff(theta,t,1);

thetaX     = { theta, x , theta_dot, x_dot, theta_dot_dot, x_dot_dot  };
thetaX_sym = { x1   , x2, x3       , x4   , x3_dot       , xa_dot_dot };

V_dot       = subs( V_dot,       thetaX, thetaX_sym)
V_dot_sym   = subs( V_dot_sym,   thetaX, thetaX_sym)
E_delta_dot = subs( E_delta_dot, thetaX, thetaX_sym)
E_delta     = subs( E_delta,     thetaX, thetaX_sym)

%syms p11 p12 p21 p22;

%square function selected as Lyapunov function candidate
%V = (1/2)*[ theta theta_dot ]*[ p11 p12;
%                                p21 p22 ]*[ theta      ;
%                                            theta_dot ];
%diagonal
%p12 = 0;
%p21 = 0;
%
%symetric:
%V = (1/2)*[ theta theta_dot ]*[ p11 p12;
%                                p12 p22 ]*[ theta      ;
%                                            theta_dot ];


%%
close all
run('initCartPendulum.m')

% V_dot       = vpa( subs( V_dot       ), 4);
% V_dot_sym   = vpa( subs( V_dot_sym   ), 4);
% E_delta_dot = vpa( subs( E_delta_dot ), 4);
% E_delta     = vpa( subs( E_delta     ), 4);

x1_vec     = 0:.2:2*pi;
x3_vec     = -4*pi:.2:4*pi;

[ gr_x1, gr_x3 ] = meshgrid(x1_vec,x3_vec);

E_delta_gr     = zeros(size(gr_x1));
E_delta_dot_gr = zeros(size(gr_x1));
V_dot_gr       = zeros(size(gr_x1));
V_gr           = zeros(size(gr_x1));

%control select
con = 1;
%         0 - no control
%         1 - "rudementary" controller (Åström)
%         2 - sign-based controller (Åström)
%         3 - sat-approximation of 2
%         4 - sat-based controller (Åström)

%friction on/off  (only when contorl is disabled)
friction = 0;

for i = 1:length(x1_vec)*length(x3_vec)
  
  E_delta_gr(i)     = (l^2*m*gr_x3(i)^2)/2 - g*l*m + g*l*m*cos(gr_x1(i));
  
  V_gr(i)           = (1/2)*E_delta_gr(i)^2;
  
  if con == 1                        %<--rudementary controller (Åström)
    k = 1;
    xa_dot_dot = -k*E_delta_gr(i)*cos(gr_x1(i))*gr_x3(i);
  
  elseif con == 2                    %<--sign-based controller (Åström)
    k = 2.7;
    sgn = sign(-E_delta_gr(i)*cos(gr_x1(i))*gr_x3(i));
    if sgn == 0
      sgn = 1;
    end
    xa_dot_dot = k*sgn;
    
  elseif con == 3                     %<--approximated sign-based
    k = 2.7;                          %   controller (Åström)
    epsilon = .01;
    sgn = ...
      min( 1,max(-1,(1/epsilon)*(-E_delta_gr(i)*cos(gr_x1(i))*gr_x3(i))) );
    if sgn == 0
      sgn = 1;
    end
    xa_dot_dot = k*sgn;

  elseif con == 4                     %<--sat-based controller (Åström)
    k = 200;
    sgn = sign(cos(gr_x1(i))*gr_x3(i));
    if sgn == 0
      sgn = 1;
    end
    i_max = 4.58;
    u_max = i_max*k_tau/r;
    a_max = u_max/(M+m) -.2;
    xa_dot_dot = min( a_max, max(-a_max, -k*E_delta_gr(i)*sgn ));
    
  elseif friction
    xa_dot_dot = - (b_p_v*gr_x3(i)*cos(gr_x1(i))                + ...
                 + b_p_c*tanh(k_tanh*gr_x3(i))*cos(gr_x1(i))    + ...
                 + l^2*m*gr_x3(i)^2*sin(gr_x1(i))               - ...
                 - g*l*m*cos(gr_x1(i))*sin(gr_x1(i)))/(l*(M + m - ...
                 - m*cos(gr_x1(i))^2));
  
  else
    xa_dot_dot = - (l^2*m*gr_x3(i)^2*sin(gr_x1(i))              - ...
                 - g*l*m*cos(gr_x1(i))*sin(gr_x1(i)))/(l*(M + m - ...
                 - m*cos(gr_x1(i))^2));
  
  end
  
  E_delta_dot_gr(i) = l*m*gr_x3(i)*xa_dot_dot*cos(gr_x1(i));
  
  V_dot_gr(i)       = E_delta_gr(i)*E_delta_dot_gr(i);
  
end

figure
mesh(gr_x1, gr_x3, V_gr)
hold on
xlabel('$\theta$')
ylabel('$\dot{\theta}$')
zlabel('$V$')
axis tight

figure
mesh(gr_x1, gr_x3, V_dot_gr)
hold on
xlabel('$\theta$')
ylabel('$\dot{\theta}$')
zlabel('$\dot{V}$')
axis tight

h_E_delta = figure;
mesh(gr_x1, gr_x3, E_delta_gr)
hold on
xlabel('$\theta$')
ylabel('$\dot{\theta}$')
zlabel('$E_\Delta$')
axis tight

h_E_delta_dot = figure;
mesh(gr_x1, gr_x3, E_delta_dot_gr)
hold on
xlabel('$\theta$')
ylabel('$\dot{\theta}$')
zlabel('$\dot{E_\Delta}$')
axis tight

% [ Vx1, Vx3 ] = gradient( V_dot_gr );% , 0.001, 0.001 );
% 
% Z = 10*ones(size(Vx1));
% z = zeros(size(Vx1));
% 
% quiver3( x1_vecQ, x3_vecQ, Z, Vx1, Vx3, z )
% 
% figure
% quiver( x1_vecQ, x3_vecQ, Vx1, Vx3)
% 
% figure
% mesh(gr_x1Q, gr_x3Q, V_dot_gr)

syms x1 x3 g m l

%Find solutions of E_delta = 0
solve((l^2*m*x3^2)/2 - g*l*m + g*l*m*cos(x1) == 0, x3)

x1 = 0:.0001:2*pi;

run('initCartPendulum.m')
J = m*l^2;

x3_1 =  ( -2*m*g*l*(cos(x1)-1)/J ).^(1/2);
x3_2 = -( -2*m*g*l*(cos(x1)-1)/J ).^(1/2);

figure
plot(x1,x3_1, 'color', [ 0 .55 0 ], 'linewidth', 2 )
hold on
plot(x1,x3_2, 'color', [ 0 .55 0 ], 'linewidth', 2 )
grid on, grid minor
xlabel('$\theta$')
ylabel('$\dot{\theta}$')
xticks([-4*pi -3*pi -2*pi -pi 0 pi 2*pi 3*pi 4*pi])
xticklabels( {'$-4\pi$' '$-3\pi$' '$-2\pi$' '$-\pi$' '$0$' ...
              '$\pi$' '$2\pi$' '$3\pi$' '$4\pi$'           } )
yticks([-4*pi -3*pi -2*pi -pi 0 pi 2*pi 3*pi 4*pi])
yticklabels( {'$-4\pi$' '$-3\pi$' '$-2\pi$' '$-\pi$' '$0$' ...
              '$\pi$' '$2\pi$' '$3\pi$' '$4\pi$'           } )
% yticks([-4*pi -7*pi/2 -3*pi -5*pi/2 -2*pi -3*pi/2 -pi -pi/2 0 ...
%         pi/2 pi 3*pi/2 2*pi 5*pi/2 3*pi 7*pi/2 4*pi])
% yticklabels( {'$-4\pi$' '$-7\pi/2$' '$-3\pi$' '$-5\pi/2$'     ...
%               '$-2\pi$' '$-3\pi/2$' '$-\pi$' '$-\pi/2$' '$0$' ...
%               '$\pi/2$' '$\pi$' '$3\pi/2$' '$2\pi$'           ...
%               '$5\pi/2$' '$3\pi$' '$7\pi/2$' '$4\pi$'           } )
axis equal
axis([-4*pi 4*pi -4*pi 4*pi])
%add equilibrium-points
plot(0,0, 'color', [ .8 0 .2 ], 'marker', '.', 'markersize', 18)
plot(2*pi,0, 'color', [ .8 0 .2 ], 'marker', '.', 'markersize', 18)

figure(h_E_delta)
plot(x1,x3_1, 'color', [ 0 .6 0 ], 'linewidth', 2 )
hold on
plot(x1,x3_2, 'color', [ 0 .6 0 ], 'linewidth', 2 )


figure(h_E_delta_dot)
plot(x1,x3_1, 'color', [ 1 0 0 ], 'linewidth', 2 )
hold on
plot(x1,x3_2, 'color', [ 1 0 0 ], 'linewidth', 2 )