clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/cartPendulum

run('latexDefaults.m')

syms x1 x2 x3 x4 u
syms k_tanh b_p_v b_p_c b_c_v b_c_c
syms m M g l

simulateReduced = 1;

%state vector,
% [ x1 ]    [  theta      ]
% [ x2 ]  = [  x          ]
% [ x3 ]    [  theta_dot  ]
% [ x4 ]    [  x_dot      ]

MM = [  m*(l^2)       -m*l*cos(x1)  ;
       -m*l*cos(x1)    M+m            ];

G = [ 0
      m*l*sin(x1)*x4^2 ];

C = [ -m*g*l*sin(x1)  ;
       0                ];

B = [ b_p_c*tanh(k_tanh*x4) + b_p_v*x3  ;
      b_c_c*tanh(k_tanh*x3) + b_c_v*x4 ];

F = [ 0  ;
      u ];

%----full nonliner system--------------------------------------------------

f_x = [ x3                 ;
        x4                 ;
        MM\(- G - C - B ) ];

g_x = [ 0     ;
        0     ;
        MM\F ];

g_x = g_x./u;

x_dot = f_x + g_x*u;

%-----on regular form------------------------------------------------------

%--transform-------------
%         [ x1                        ]     [ eta1 ]
% T    =  [ ( cos(x1)/l )*x4 - x3     ]  =  [ eta2 ]
%         [ x2                        ]     [ eta3 ]
%         [ x4                        ]     [ xi   ]
%--inverse---------------
%         [ eta1                      ]     [ x1   ]
% T^-1 =  [ eta3                      ]  =  [ x2   ]
%         [ ( cos(eta1)/l )*xi - eta2 ]     [ x3   ]
%         [ xi                        ]     [ x4   ]

syms eta1 eta2 eta3 xi

T_inv = { eta1, eta3, (cos(eta1)/l)*xi - eta2, xi };

f1 = simplify( subs(f_x(1), { x1, x2, x3, x4 }, T_inv ) );
f2 = simplify( subs(f_x(2), { x1, x2, x3, x4 }, T_inv ) );
f3 = simplify( subs(f_x(3), { x1, x2, x3, x4 }, T_inv ) );
f4 = simplify( subs(f_x(4), { x1, x2, x3, x4 }, T_inv ) );

g1 = simplify( subs(g_x(1), { x1, x2, x3, x4 }, T_inv ) );
g2 = simplify( subs(g_x(2), { x1, x2, x3, x4 }, T_inv ) );
g3 = simplify( subs(g_x(3), { x1, x2, x3, x4 }, T_inv ) );
g4 = simplify( subs(g_x(4), { x1, x2, x3, x4 }, T_inv ) );

%--transformed system----

f_a = [ (cos(eta1)/l)*xi - eta2                                            ;
       -(sin(eta1)/l)*((sin(eta1)/l)*xi - eta2)*xi + (cos(eta1)/l)*f4 - f3 ;
        xi                                                                ];

f_b = f4;

g_b = g4;

%--regular form----------
eta_dot = simplify(  f_a          );
xi_dot  = simplify(  f_b + g_b*u  );


%-----reduced-order system linearization-----------------------------------

eta = [ eta1 
        eta2 
        eta3];

J_eta = jacobian(eta_dot, eta);

J_xi = jacobian(eta_dot, xi);

eta1 = 0;   eta2 = 0;   eta3 = 0;   xi = 0;   k_tanh = 1;                  %#ok<NASGU>

A = simplify( subs( J_eta ) )                                              %#ok<NOPTS>

B = simplify( subs( J_xi ) )                                               %#ok<NOPTS>

%-----designing linear state feedback controller---------------------------

run('initCartPendulum.m')

A = double( subs(A) );
B = double( subs(B) );

% A = [   0    -1              0  ;
%        -g/l  -b_p_v/(l^2*m)  0  ;
%         0     0              0 ];
%  
%  
% B = [ 1/l                        ;
%       (b_p_v + b_p_c*l)/(l^3*m)  ;
%       1                         ];

C = [ 1 1 1 ];

D = 0;

linSys = ss(A,B,C,D);

%--controllability-------
Con = vpa( [ B A*B (A^2)*B ], 4 )                                          %#ok<NOPTS>

rank = rank(Con)                                                           %#ok<NOPTS>

if rank == length(B)
  disp('The system is controllable')
end

%-----design of linear controller------------------------------------------

poles = [ -3 -4 -5 ];

k = place(A, B, poles);

%storring for use in design of sliding manifold
k1_final = k(1);
k2_final = k(2);
k3_final = k(3);

if simulateReduced
%-----simulation of controlled reduced-order system------------------------

maxCatchAngle = deg2rad(5)

mxCA = maxCatchAngle;
%initial conditions for ode45
eta1_0 = mxCA;%  =  x1                  =  theta
eta2_0 = 0;   %  = (cos(x1)/l)*x4 - x3  = (cos(theta)/l)*x_dot - theta_dot
eta3_0 = 0;   %  =  x2                  =  x

%sample time and final time [s]
Ts = .01;
T_final = 5;

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ eta1_0 eta2_0 eta3_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%simulating system using ode45
[t, eta] = ode45( @(t,eta)                              ...
                  simReducedOrder( t, eta, k, M, m, l,  ...
                                   g, k_tanh,           ...
                                   b_p_c, b_p_v,        ...
                                   b_c_c, b_c_v         ),  ...
                  tspan, init, options                      );

%assigning results of ode45 simulation
eta1 = eta(:,1);% =  x1                  =  theta
eta2 = eta(:,2);% = (cos(x1)/l)*x4 - x3  = (cos(theta)/l)*x_dot - theta_dot
eta3 = eta(:,3);% =  x2                  =  x

%linear system simulation for comparison
sys_cl = ss(A-B*k,B,C,D);

u = zeros(size(tspan));

[ yy, tt, eta_lin ] = lsim(sys_cl,u,tspan,init);

%linear simulation resolution
res = 5; %plotting every n'th data-point (higher number, lower res.)

eta1_lin = eta_lin(1:res:end,1);
eta2_lin = eta_lin(1:res:end,2);
eta3_lin = eta_lin(1:res:end,3);
tt       = tt(1:res:end);

%marker size for linear simulation
markerZ = 8;

%plotting results
eta1_h = figure;
axEta1 = gca;
plot(t, eta1, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_1=\theta$ [rad]')
plot(tt, eta1_lin, '.', 'markersize', markerZ)
legend( 'Controlled nonlinear Model' , 'Controlled Linear Model' )
grid on; grid minor

eta2_h = figure;
axEta2 = gca;
plot(t, eta2, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_2$')
plot(tt, eta2_lin, '.', 'markersize', markerZ)
legend( 'Controlled nonlinear Model' , 'Controlled Linear Model' )
grid on; grid minor

eta3_h = figure;
axEta3 = gca;
plot(t, eta3, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_3=x$ [m]')
plot(tt, eta3_lin, '.', 'markersize', markerZ)
legend( 'Nonlinear Model Controlled' , 'Linear Model Controlled' )
grid on; grid minor


axesEta123 = [ axEta1 axEta2 axEta3 ];
linkaxes(axesEta123, 'xy')

end
%-----design of sliding manifold-------------------------------------------

syms x1 x2 x3 x4
syms k1 k2 k3 u
syms eta1 eta2 eta3 xi
syms k_tanh b_p_v b_p_c b_c_v b_c_c
syms m M g l

k = [ k1 k2 k3 ];
      
eta = [ eta1  ;
        eta2  ;
        eta3 ];

phi = -k*eta;

s = xi - phi;

%converting to regular states using T^-1
eta1 = x1;    eta2 = (cos(x1)/l)*x4 - x3;    eta3 = x2;    xi = x4;

s = subs( s )                                                              %#ok<NOPTS>

fx_a = simplify( subs( f_a ) );
fx_b = simplify( subs( f_b ) );
gx_b = simplify( subs( g_b ) );

%symbolic control parameters
rho     = k*fx_a + fx_b

g_b_inv = 1/gx_b

run('initCartPendulum.m')

%setting bounds (notice that position and velocity of cart is irrelevant)
x1 = maxCatchAngle;
x2 = 0;
x3 = 2*pi;
x4 = 0;

%rho only dependent on gain vector k
rho_k = vpa( subs(rho) ,4)

k1 = k1_final;
k2 = k2_final;
k3 = k3_final;

k = [ k1 k2 k3 ]

%calculating rho for currently selected gain vector k
rho = vpa( subs(rho) ,6)

%slope of saturation function
epsilon = 0.03

%tuning parameter
beta_0 = .1

beta = vpa( rho + beta_0 ,6)

% sgn(s) ~ sat = min( 1, max(-1, (1/epsilon)*s))

% u = - g_b_inv*beta*sign(s)
