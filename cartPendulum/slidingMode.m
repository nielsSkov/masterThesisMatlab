clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/cartPendulum

run('latexDefaults.m')

syms x1 x2 x3 x4 u
syms k_tanh b_p_v b_p_c b_c_v b_c_c
syms m M g l

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

% T = [ T1
%       T2
%       x1
%       x3 ]

% T_dot = T_dx*x_dot

% T1_dot = T1_dx*g_x = 0   if T1 = x2 
%                            then T1_dx = [ 0 1 0 0 ] so T1_dx*g_x = 0

% T = [ x2
%       T2
%       x1
%       x3 ]

% T2_dot = T2_dx*g_x = 0   [ T2_dx1 T2_dx2 T2_dx3 T2_dx4 ] [ 0 0 g1 g2 ]^T
%
%                          [ 0 0 T2_dx3 T2_dx4 ] [ 0 0 g1 g2 ]^T
%
%      [1]                 T2_dx3*g1 + T2_dx4*g2  = 0

g1 = g_x(3);
g2 = g_x(4);

f1 = f_x(3);
f2 = f_x(4);

%  g1 = cos(x1)/(l*(M + m - m*cos(x1)^2))

%  g2 = 1/(M + m - m*cos(x1)^2)

% for [1] to hold 
%                   T2_dx3*g1 = T2_dx4*g2
% choose
%         T2_dx3 = -1           and
%         T2_dx4 = cos(x1)/l
% s.t.
%         T2 = -int( 1 , dx3 ) + (cos(x1)/l)*int( 1 , dx4 )
%
%         T2 = -x3 + x4*cos(x1)/l

% T = [  x2                       [ eta1
%       -x3 + x4*cos(x1)/l    =     eta2
%        x1                         eta3
%        x3                ]        xi  ]

% eta2 = -x3 + x4*cos(x1)/l   where  x1 = eta3   and   x3 = xi   so
%
% eta2 = -xi + x4*cos(eta3)/l
%
% x4 = (eta2 + xi )*l/cos(eta3)

% T^-1 = [ x1        [ eta3
%          x2     =    eta1
%          x3          xi
%          x4 ]        (eta2 + xi )*l/cos(eta3) ]

% T_dt = [  x2_dot                                             [ eta1_dot 
%          -x3_dot - x4*x1_dot*sin(x1)/l + x4_dot*cos(x1)/l  =   eta2_dot 
%           x1_dot                                               eta3_dot 
%           x3_dot                                         ]     xi_dot   ]

% [ eta1_dot     [ x4
%   eta2_dot   =   -(f1+g1) - x4*x3*sin(x1)/l + (f2+g2)*cos(x1)/l
%   eta3_dot       x3
%   xi_dot   ]     x3_dot ]

% [ eta1_dot     [  x4
%   eta2_dot   =   -f1 - x4*x3*sin(x1)/l + f2*cos(x1)/l
%   eta3_dot        x3
%   xi_dot   ]      f1+g1                               ]

f_a = [  x4                                   ;
        -f1 - x4*x3*sin(x1)/l + f2*cos(x1)/l  ;
         x3                                  ];

f_b = f1 + g1;

g_b = cos(x1)/( l*( M + m - m*(cos(x1)^2) ));

%regular form
eta_dot = f_a;
xi_dot  = f_b + g_b*u;

%------regular form with change of cooredinates----------------------------

syms eta1 eta2 eta3 xi

etaXi = { eta3, eta1, xi, (eta2 + xi )*l/cos(eta3) };

eta_dot = subs(eta_dot, { x1, x2, x3, x4 }, etaXi );
eta_dot = simplify(eta_dot);

xi_dot  = subs(xi_dot,  { x1, x2, x3, x4 }, etaXi );

%-----symbolic linearization-----------------------------------------------

eta = [ eta1 
        eta2 
        eta3];

J_eta = jacobian(eta_dot, eta);

A = subs( J_eta, { eta1, eta2, eta3, xi, k_tanh }, { 0, 0, 0, 0, 1 } );

A = simplify(A)

J_xi = jacobian(eta_dot, xi);

B = subs( J_xi, { eta1, eta2, eta3, xi, k_tanh }, { 0, 0, 0, 0, 1 } );

B = simplify(B)

% -----designing linear state feedback controller---------------------------

run('initCartPendulum.m')

A = [ 0   l             0    ;
      0   b_p_c/(l*m)  -g/l  ;
      0   0             0   ];

B = [ l                          ;
      (b_p_v + b_p_c*l)/(l^2*m)  ;
      1                         ];

C = [ 1 1 1 ];

D = 0;

linSys = ss(A,B,C,D);

%

leg = char({'.......................'});

%setting axis limits for single iteration plot
limx_1 = [0 5];
limy_1 = [-.5 2];
%setting axis limits for many iteration plot
limx_2 = [0 3];
limy_2 = [-1 4];
%limits on/off
lim = 0;

for j = 1:2
if j == 1
  %setting nr of iterations ( >1 to tune pole placement     )
  iter = 1;      %          ( =1 to compare with linear sim )
elseif j == 2
  iter = 10;
end

for i = 2:iter+1
  %control gain
  if iter > 1
    poles = [ -i*.7-1; -i*.7-2; -i*.7-3 ];
    %poles = [ -i*1/3; -i*2/3; -i*3/3 ];
    k = place(A, B, poles);
  else
    %k = place(A, B, [ -6 -7 -8 ])  %most on x pos
    %k = place(A, B, [ -2.8 -3.5 -4.2 ])
    k = place(A, B, [ -10 -12 -14 ])
    %k = place(A, B, [ -3 -7 -8 ])
    %k = place(A, B, [ -1; -2; -3 ]);
  end
   -32.0774 ,  -2.7818 ,  31.8236  
  

  %-----simulation of reduced state system, eta_dot, using ode45-----------
  
  % T = [  x2                      [ eta1    [ x
  %       -x3 + x4*cos(x1)/l    =    eta2  =  -theta_dot+x_dot*cos(theta)/l
  %        x1                        eta3      theta
  %        x3                ]       xi  ]     theta_dot ]
  
  %initial conditions for ode45
  eta1_0 = 0; % =  x
  eta2_0 = 0; % = -theta_dot+x_dot*cos(theta)/l
  eta3_0 = .1; % =  theta

  %sample time and final time [s]
  Ts = .01;
  T_final = 10;

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
  eta1 = eta(:,1);
  eta2 = eta(:,2);
  eta3 = eta(:,3);

  %linear system simulation for comparison
  sys_cl = ss(A-B*k,B,C,D);

  u = zeros(size(tspan));

  [ yy, tt, eta_lin ] = lsim(sys_cl,u,tspan,init);

  %linear simulation resolution
  res = 10; %plotting every n'th data-point (higher number, lower res.)

  eta1_lin = eta_lin(1:res:end,1);
  eta2_lin = eta_lin(1:res:end,2);
  eta3_lin = eta_lin(1:res:end,3);
  tt = tt(1:res:end);

  %marker size for linear simulation
  markerZ = 10;
  
  %generating legends for iterations > 1
  if iter > 1
    str=sprintf('[ \\ %.2f \\ \\ %.2f \\ \\ %.2f \\ ]',...
                   poles(1),  poles(2),  poles(3));
    leg(i,1:length(str))=str;
  end
  
  if iter == 1
    reducedOrderControl_h = figure;
  elseif iter > 1 && i == 2
    reducedOrderControlMany_h = figure;
  end
  
  %plotting results
  subplot(3,1,1), plot(t, eta1, 'linewidth', 1.5)
  hold on
  xlabel('$t$ [s]')
  ylabel('$\eta_1$')
  if iter == 1
    subplot(3,1,1), plot(tt, eta1_lin, '.', 'markersize', markerZ)
    legend( 'Controlled nonlinear Model' , 'Controlled Linear Model' )
    if lim == 1
      xlim(limx_1)
      ylim(limy_1)
    end
    grid on; grid minor
  end
  if i == 11
    legend( leg(2,:), leg(3,:), leg(4,:), leg(5,:), leg(6,:),  ...
            leg(7,:), leg(8,:), leg(9,:), leg(10,:), leg(11,:) )
    if lim == 1
      xlim(limx_2)
      ylim(limy_2)
    end
    grid on; grid minor
  end

  subplot(3,1,2), plot(t, eta2, 'linewidth', 1.5)
  hold on
  xlabel('$t$ [s]')
  ylabel('$\eta_2$')
  if iter == 1
    subplot(3,1,2), plot(tt, eta2_lin, '.', 'markersize', markerZ)
    legend( 'Controlled nonlinear Model' , 'Controlled Linear Model' )
    if lim == 1
      xlim(limx_1)
      ylim(limy_1)
    end
    grid on; grid minor
  end
  if i == 11
    legend( leg(2,:), leg(3,:), leg(4,:), leg(5,:), leg(6,:),  ...
            leg(7,:), leg(8,:), leg(9,:), leg(10,:), leg(11,:) )
    if lim == 1
      xlim(limx_2)
      ylim(limy_2)
    end
    grid on; grid minor
  end

  subplot(3,1,3), plot(t, eta3, 'linewidth', 1.5)
  hold on
  xlabel('$t$ [s]')
  ylabel('$\eta_3$')
  if iter == 1
    subplot(3,1,3), plot(tt, eta3_lin, '.', 'markersize', markerZ)
    legend( 'Controlled nonlinear Model' , 'Controlled Linear Model' )
    if lim == 1
      xlim(limx_1)
      ylim(limy_1)
    end
    grid on; grid minor
  end
  if i == 11
    legend( leg(2,:), leg(3,:), leg(4,:), leg(5,:), leg(6,:),  ...
            leg(7,:), leg(8,:), leg(9,:), leg(10,:), leg(11,:) )
    if lim == 1
      xlim(limx_2)
      ylim(limy_2)
    end
    grid on; grid minor
  end
  
end
end



%%
syms x1 x2 x3 x4
syms k1 k2 k3 u
syms eta1 eta2 eta3 xi

k = [ k1 k2 k3 ];
      
eta = [ eta1  ;
        eta2  ;
        eta3 ];

phi = -k*eta;

s = xi - phi;

s = subs( s, { eta1, eta2, eta3, xi }, { x2, -x3 + x4*cos(x1)/l, x1, x3 } )


%changing to states (x1,...,x4) as cooredinates
eta_dot = f_a;
xi_dot = f_b + g_b*u;

% s_dot = xi_dot + k*eta_dot;

%rho including g_b in bound
%rho = (k*f_a + f_b)/g_b;

%rho not including g_b in bound
rho = k*f_a + f_b

g_b_inv = 1/g_b

%%

run('initCartPendulum.m')

x1 = 0.1745; % 10 deg
x2 = 0;
x3 = pi;
x4 = 0;

k_s = [ -4.1914 -1.2197 12.0157 ];
k1  = k_s(1);
k2  = k_s(2);
k3  = k_s(3);

%updating omega(x) with numerical values
rho = subs(rho);
s = subs(s);

rho = vpa(simplify(rho),2);
s = vpa(simplify(s),2);



epsilon = 0.03

beta_0 = .1

%beta = rho + beta_0

%x_max

% sgn(s) ~ sat = min( 1, max(-1, (1/epsilon)*s))

% u = - (g_b^(-1))*beta0*sign(s)

% s = vpa(s,2)

%phi = -k*eta;
%s = xi + phi;
