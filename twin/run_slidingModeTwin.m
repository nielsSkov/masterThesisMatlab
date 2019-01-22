clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twin

run('latexDefaults.m')

syms m1 m2 M l1 l2 g r b_c_c b_c_v b_p1_c b_p1_v b_p2_c b_p2_v k_tanh k_tau

syms x1 x2 x3 x4 x5 x6 u

MM = [  m1*(l1^2)       0              -m1*l1*cos(x1)  ;
        0               m2*(l2^2)      -m2*l2*cos(x2)  ;
       -m1*l1*cos(x1)  -m2*l2*cos(x2)   M+m1+m2       ];

C = [ 0
      0
      m1*l1*sin(x1)*x4^2 + m2*l2*sin(x2)*x5^2 ];

G = [ -m1*g*l1*sin(x1)  ;
      -m2*g*l2*sin(x2)  ;
       0               ];

F = [ 0  ;
      0  ;
      u ];

%set cart friction to zero
b_c_c = 0; b_c_v = 0;

B = [ b_p1_c*tanh(k_tanh*x4) + b_p1_v*x4  ;
      b_p2_c*tanh(k_tanh*x5) + b_p2_v*x5  ;
      b_c_c*tanh(k_tanh*x6)  + b_c_v*x6  ];

% x_dot = [ x4                   ; % =   theta1_dot
%           x5                   ; % =   theta2_dot
%           x6                   ; % =        x_dot
%           MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
%                                  %     theta2_dot_dot
%                                  %          x_dot_dot ]

x = [ x1  ;
      x2  ;
      x3  ;
      x4  ;
      x5  ;
      x6 ];


%-------full nonliner system-----------------------------------------------

f_x =  [ x4                 ;
         x5                 ;
         x6                 ;
         MM\(- G - C - B ) ]; 

g_x = [ 0     ;
        0     ;
        0     ;
        MM\F ];

g_x = g_x./u;

x_dot = f_x + g_x*u;


%-------finding g4, g5 and g6----------------------------------------------

u = 1;
invM_F_no_u = simplify( subs(MM\F) );

g4 = invM_F_no_u(1);
g5 = invM_F_no_u(2);
g6 = invM_F_no_u(3);

%for beautiful print of these expressions, see slidingMode.mlx

%-------transform----------------------------------------------------------

% T = [ x1                                       ;    % = eta1
%       x2                                       ;    % = eta2
%      -x4 - x5 + ( cos(x1)/l1 + cos(x2)/l2 )*x6 ;    % = eta3
%      ( cos(x2)/l2 )*x4 + ( cos(x1)/l1 )*x5     ...
%      - ( 2*cos(x1)*cos(x2)/(l1*l2) )*x6        ;    % = eta4
%       x3                                       ;    % = eta5
%       x6                                      ];    % = xi


T = [ x1                                        ;    % = eta1
      x2                                        ;    % = eta2
     -x4 - x5 + ( cos(x1)/l1 + cos(x2)/l2 )*x6  ;    % = eta3
      l1*x4 + l2*x5 - ( cos(x1) + cos(x2) )*x6  ;    % = eta4
      x3                                        ;    % = eta5
      x6                                       ];    % = xi

J = jacobian(T, [x1 x2 x3 x4 x5 x6]);

detJ = det(J)

%-------inverse transform--------------------------------------------------

syms eta1 eta2 eta3 eta4 eta5 xi

x1 = eta1;
x2 = eta2;
x3 = eta5;
x6 = xi;

T3_etaXi = subs(T(3));
T4_etaXi = subs(T(4));

x4_etaXi_x5 = solve( eta3 == T3_etaXi, x4 );

x5_etaXi_x5 = subs( T4_etaXi, x4, x4_etaXi_x5);

x5_etaXi= simplify( solve( eta4 == x5_etaXi_x5, x5 ) );

x4_etaXi= simplify( subs( x4_etaXi_x5, x5, x5_etaXi ) );

invT = [ eta1      ;  % = x1
         eta2      ;  % = x2
         eta5      ;  % = x3
         x4_etaXi  ;  % = x4
         x5_etaXi  ;  % = x5
         xi       ]   % = x6

%disassociate x-states with etaXi-states
clear x1 x2 x3 x4 x5 x6
syms  x1 x2 x3 x4 x5 x6

%% -------full system transformed------------------------------------------

T_inv = { eta1                                              ,...
          eta2                                              ,...
          eta5                                              ,...
         (eta4*l1 + l1*xi*cos(eta1)                       ...
          - l2*xi*cos(eta1) + eta3*l1*l2)/(l1*(l1 - l2))    ,...
        -(eta4*l2 - l1*xi*cos(eta2)                       ...
          + l2*xi*cos(eta2) + eta3*l1*l2)/(l2*(l1 - l2))    ,...
          xi                                                 };

f1 = simplify( subs(f_x(1), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
f2 = simplify( subs(f_x(2), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
f3 = simplify( subs(f_x(3), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
f4 = simplify( subs(f_x(4), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
f5 = simplify( subs(f_x(5), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
f6 = simplify( subs(f_x(6), { x1, x2, x3, x4, x5, x6 }, T_inv ) );

g1 = simplify( subs(g_x(1), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
g2 = simplify( subs(g_x(2), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
g3 = simplify( subs(g_x(3), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
g4 = simplify( subs(g_x(4), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
g5 = simplify( subs(g_x(5), { x1, x2, x3, x4, x5, x6 }, T_inv ) );
g6 = simplify( subs(g_x(6), { x1, x2, x3, x4, x5, x6 }, T_inv ) );

%% -------system on regular form-------------------------------------------

f_a = [ x4_etaXi                                                       ;
        x5_etaXi                                                       ;
       -f4 - g4*u - f5 - g5*u +                                     ...
         (1/l1)*( -sin(eta1)*xi*x4_etaXi + cos(eta1)*( f6 + g6*u) ) ...
       + (1/l2)*( -sin(eta2)*xi*x5_etaXi + cos(eta2)*( f6 + g6*u) )    ;
       l1*( f4 + g4*u ) + l2*( f5 + g5*u )                          ...
       + sin(eta1)*xi*x4_etaXi - cos(eta1)*( f6 + g6*u )            ...
       + sin(eta2)*xi*x5_etaXi - cos(eta2)*( f6 + g6*u )               ;
       xi                                                             ];
     
f_b = f6;

g_b = g6;

% dTdt = [             ]     [   0   ]
%        [             ]     [   0   ]
%        [     f_a     ]     [   0   ]
%        [             ]     [   0   ]
%        [ _ _ _ _ _ _ ]     [ _ 0 _ ]
%        [     f_b     ]  +  [   g_b ] * u

eta_dot = simplify(  f_a          );
xi_dot  = simplify(  f_b + g_b*u  );


%-------reduced-order system linearization---------------------------------

eta = [ eta1 
        eta2 
        eta3
        eta4
        eta5 ];

J_eta = jacobian(eta_dot, eta);

J_xi = jacobian(eta_dot, xi);

A = simplify( subs( J_eta, { eta1, eta2, eta3, eta4, eta5, xi, k_tanh },...
                           { 0   , 0   , 0   , 0   , 0   , 0 , 0      } ) )

B = simplify( subs( J_xi, { eta1, eta2, eta3, eta4, eta5, xi, k_tanh }, ...
                          { 0   , 0   , 0   , 0   , 0   , 0 , 0      }  ) )

%% -------test for controllability-----------------------------------------

run('initTwin.m');

An = double(subs(A));
Bn = double(subs(B));
Cn = ones(1,5);
Dn = 0;

Con = [ B A*B (A^2)*B (A^3)*B (A^4)*B (A^5)*B ];

rankC = rank(Con)

if rankC == length(B)
  disp('The system is controllable!')
else
  disp('The system is NOT controllable!')
end

%% -------design of linear controller--------------------------------------
close all

%poles = [ -1 -2 -3 -4 -5 ]; %works well in sim
%poles = [ -2 -3 -4 -5 -6 ]; %also works well in sim [chosen for real sys]
%poles = [ -1.5 -2.5 -3.5 -4.5 -5.5 ];
poles = [ -1.5 -2.5 -4.5 -5.5 -6.5 ]

k = place( An, Bn, poles )

k1n = k(1);
k2n = k(2);
k3n = k(3);
k4n = k(4);
k5n = k(5);

maxCatchAngle = 0.02;  % [rad]

%initial conditions for ode45
eta1_0 =  maxCatchAngle/2;    %  =  x1  =  theta1
eta2_0 = -maxCatchAngle/2;    %  =  x2  =  theta2
eta3_0 = 0;
eta4_0 = 0;
eta5_0 = 0;                   %  =  x3  =  x

%sample time and final time [s]
Ts      = .0067;
T_final = 5;

%initialization for ode45
tspan = 0:Ts:T_final;
init  = [ eta1_0 eta2_0 eta3_0 eta4_0 eta5_0 ];

%lowering relative tollerence (default 1e-3) to avoid drifting along x
options = odeset('RelTol',1e-7);

%simulating system using ode45
[t, eta] = ode45( @(t,eta)                                 ...
                  simReducedOrderTwin( t, eta, k, M,    ...
                                       m1, m2, l1, l2,  ...
                                       g, k_tanh,       ...
                                       b_p1_c, b_p1_v,  ...
                                       b_p2_c, b_p2_v   ), ...
                  tspan, init, options                     );



%initialize control vector for storing results of following loop
xi = zeros(size(t));

%calculating/simulating input xi = phi(eta) = k eta
for i = 1:length(t)
  
  [ ~, xi(i) ] = simReducedOrderTwin( t(i), eta(i,:)', k, M, ...
                                      m1, m2, l1, l2,        ...
                                      g, k_tanh,             ...
                                      b_p1_c, b_p1_v,        ...
                                      b_p2_c, b_p2_v         );
end

%assigning results of ode45 simulation
eta1 = eta(:,1);                       %  =  x1  =  theta1
eta2 = eta(:,2);                       %  =  x2  =  theta2
eta3 = eta(:,3);                       %
eta4 = eta(:,4);                       %
eta5 = eta(:,5);                       %  =  x3  =  x


%linear system simulation for comparison
sys_cl = ss(An-Bn*k,Bn,Cn,Dn);

u = zeros(size(tspan));

[ yy, tt, eta_lin ] = lsim( sys_cl, u, tspan, init );

%linear simulation resolution
res = 1; %plotting every n'th data-point (higher number, lower res.)

eta1_lin = eta_lin(1:res:end,1);
eta2_lin = eta_lin(1:res:end,2);
eta3_lin = eta_lin(1:res:end,3);
eta4_lin = eta_lin(1:res:end,4);
eta5_lin = eta_lin(1:res:end,5);
xi_lin   = (-k*eta_lin')';
xi_lin   = xi_lin(1:res:end);
tt       = tt(1:res:end);

%marker size for linear simulation
markerZ = 8;

%plotting results
eta1_h = figure;
axEta1 = gca;
plot(t, eta1, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_1=\theta_1$ [rad]')
plot(tt, eta1_lin, 'linewidth', 1.5);%, '.', 'markersize', markerZ)
legend( 'Controlled nonlinear Model',  ...
        'Controlled Linear Model',     ...
        'location', 'southeast'           )
grid on; grid minor

eta2_h = figure;
axEta2 = gca;
plot(t, eta2, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_2=\theta_2$ [rad]')
plot(tt, eta2_lin, 'linewidth', 1.5);%, '.', 'markersize', markerZ)
legend( 'Controlled nonlinear Model',  ...
        'Controlled Linear Model',     ...
        'location', 'southeast'           )
grid on; grid minor

eta3_h = figure;
axEta3 = gca;
plot(t, eta3, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_3$')
plot(tt, eta3_lin, 'linewidth', 1.5);%, '.', 'markersize', markerZ)
legend( 'Nonlinear Model Controlled',  ...
        'Linear Model Controlled',     ...
        'location', 'southeast'           )
grid on; grid minor

eta4_h = figure;
axEta4 = gca;
plot(t, eta4, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_4$')
plot(tt, eta4_lin, 'linewidth', 1.5);%, '.', 'markersize', markerZ)
legend( 'Nonlinear Model Controlled',  ...
        'Linear Model Controlled',     ...
        'location', 'southeast'           )
grid on; grid minor

eta5_h = figure;
axEta5 = gca;
plot(t, eta5, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\eta_5=x$ [m]')
plot(tt, eta5_lin, 'linewidth', 1.5);%, '.', 'markersize', markerZ)
legend( 'Nonlinear Model Controlled',  ...
        'Linear Model Controlled',     ...
        'location', 'southeast'           )
grid on; grid minor

xi_h = figure;
axXi = gca;
plot(t, xi, 'linewidth', 1.5);
hold on
xlabel('$t$ [s]')
ylabel('$\phi(\mathbf{\eta}) = \xi = \dot{x}$ [m $\cdot$ s$^{-1}$]')
plot(tt, xi_lin, 'linewidth', 1.5);%, '.', 'markersize', markerZ)
legend( 'Nonlinear Simulation', ...
        'Liner Simulation',     ...
        'location', 'southeast'    )
grid on; grid minor

axesEta12345 = [ axEta1 axEta2 axEta3 axEta4 axEta5 ];
linkaxes(axesEta12345, 'xy')





%-------design of sliding manifold-----------------------------------------

syms x1 x2 x3 x4 x5 x6
syms k1 k2 k3 k4 k5 u
syms eta1 eta2 eta3 eta4 eta5 xi
syms k_tanh b_p1_v b_p1_c b_p2_v b_p2_c
syms m1 m2 M g l1 l2

k = [ k1 k2 k3 k4 k5 ];
      
eta = [ eta1  ;
        eta2  ;
        eta3  ;
        eta4  ;
        eta5 ];

phi = -k*eta;

s = xi - phi;

%converting to regular states using T
eta1 =  x1                                       ;
eta2 =  x2                                       ;
eta3 = -x4 - x5 + ( cos(x1)/l1 + cos(x2)/l2 )*x6 ;
eta4 =  l1*x4 + l2*x5 - ( cos(x1) + cos(x2) )*x6 ;
eta5 =  x3                                       ;
xi   =  x6                                       ;

s = subs( s )

fx_a = simplify( subs( f_a ) );
fx_b = simplify( subs( f_b ) );
gx_b = simplify( subs( g_b ) );

%symbolic control parameters
rho     = k*fx_a + fx_b;
g_b_inv = 1/gx_b


run('initTwin.m')

%setting bounds (notice that position and velocity of cart is irrelevant)
x1 =  maxCatchAngle/2;
x2 = -maxCatchAngle/2;
x3 = 0;
x4 = 0; %assuming zero angular velocity at max catch angle
x5 = 0; %assuming zero angular velocity at max catch angle
x6 = 0;

%rho only dependent on gain vector k
rho_k = vpa( subs(rho) ,4)

k1 = k1n;
k2 = k2n;
k3 = k3n;
k4 = k4n;
k5 = k5n;

%slope of saturation function
epsilon = 0.03;

%tuning parameter
beta_0 = .1;

beta = double( subs( rho + beta_0 ) );

rho = abs( double( subs( rho ) ) )

g_b_inv = subs(g_b_inv);

u_max = double( beta*g_b_inv  )

i_max = double( u_max*r/k_tau )










