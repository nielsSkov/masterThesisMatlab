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
x_c     = x;
y_c     = l;
x_dot_c = x_dot;
y_dot_c = 0;

zInSaddle = 1;  % 0 => zero in stable focus
                % 1 => zero in saddlepoint
if zInSaddle
  x_p     = x - l*sin(theta);
  y_p     = l + l*cos(theta);
  x_dot_p = x_dot - l*cos(theta)*theta_dot;
  y_dot_p = -l*sin(theta)*theta_dot;
else
  x_p     = x + l*sin(theta);
  y_p     = l - l*cos(theta);
  x_dot_p = x_dot + l*cos(theta)*theta_dot;
  y_dot_p = l*sin(theta)*theta_dot;
end

%full potential energy in system
U = M*g*y_c + m*g*y_p;

%full kinetic energy in system
T = (1/2)*M*x_dot_c^2 + (1/2)*M*y_dot_c^2 ...
  + (1/2)*m*x_dot_p^2 + (1/2)*m*y_dot_p^2 ;

%full energy in system
E = U + T;

%energy selected as Lyapunov function candidate
V = E;

%syms p11 p12 p13 p14 p21 p22 p23 p24 p31 p32 p33 p34 p41 p42 p43 p44;

%square function selected as Lyapunov function candidate
%V = (1/2)*[ theta x theta_dot x_dot ]*[  p11 p12 p13 p14  ;
%                                         p21 p22 p23 p24  ;
%                                         p31 p32 p33 p34  ;
%                                         p41 p42 p43 p44  ]*[ theta     ;
%                                                              x         ;
%                                                              theta_dot ;
%                                                              x_dot     ];
%symetric:
%p12 = 0;
%p13 = 0;
%p14 = 0;
%p23 = 0;
%p24 = 0;
%p34 = 0;
%V = (1/2)*[ theta x theta_dot x_dot ]*[  p11 p12 p13 p14  ;
%                                         p12 p22 p23 p24  ;
%                                         p13 p23 p33 p34  ;
%                                         p14 p24 p34 p44  ]*[ theta     ;
%                                                              x         ;
%                                                              theta_dot ;
%                                                              x_dot     ];

V_dot = diff(V,t,1);

%choice of states
% x1 = theta;
% x2 = x;
% x3 = theta_dot;
% x4 = x_dot;
syms x1 x2 x3 x4

%system dynamics
MM = [  m*(l^2)      -m*l*cos(x1)  ;
       -m*l*cos(x1)   M+m         ];

C = [ 0
      m*l*sin(x1)*x3^2 ];

G = [ -m*g*l*sin(x1)  ;
       0             ];

% F = [ 0  ;
%       u ];
F = [ 0  ;
      0 ];

B = [ b_p_c*tanh(k_tanh*x3) + b_p_v*x3  ;
      b_c_c*tanh(k_tanh*x4) + b_c_v*x4 ];
%B = [ 0  ;
%      0 ];

q_dot = [ x3                   ; % =   theta_dot
          x4                   ; % =       x_dot
          MM\(F - G - C - B ) ]; % = [ theta_dot_dot
                                 %         x_dot_dot ]

x1_dot = q_dot(1);
x2_dot = q_dot(2);
x3_dot = q_dot(3);
x4_dot = q_dot(4);

V_dot = subs(V_dot, [ theta           ...
                      x               ...
                      diff(theta,t)   ...
                      diff(x,t)       ...
                      diff(theta,t,2) ...
                      diff(x,t,2)     ], [ x1     ...
                                           x2     ...
                                           x3     ...
                                           x4     ...
                                           x3_dot ...
                                           x4_dot ] );
V_dot = simplify(V_dot)


V = subs(V, [ theta           ...
              x               ...
              diff(theta,t)   ...
              diff(x,t)       ...
              diff(theta,t,2) ...
              diff(x,t,2)     ], [ x1     ...
                                   x2     ...
                                   x3     ...
                                   x4     ...
                                   x3_dot ...
                                   x4_dot ] );
V = simplify(V)

%%
close all
run('initCartPendulum.m')

x1_vec = -10:.2:10;
x3_vec = -10:.2:10;
x4     = 0;

[ gr_x1, gr_x3 ] = meshgrid(x1_vec,x3_vec);

V_gr     = zeros(size(gr_x1));
V_dot1_gr = zeros(size(gr_x1));

for i = 1:length(x1_vec)*length(x3_vec)
  %zero in saddle point
  if zInSaddle
  V_gr(i) = (M*x4^2)/2 + (m*x4^2)/2       + ...
          + (l^2*m*gr_x3(i)^2)/2 + M*g*l  + ...
          + g*l*m + g*l*m*cos(gr_x1(i))   - ...
          - l*m*gr_x3(i)*x4*cos(gr_x1(i))   ;

  V_dot1_gr(i) = - b_c_v*x4^2 - b_p_v*gr_x3(i)^2        - ...
                - b_c_c*x4*tanh(k_tanh*x4)             - ...
                - b_p_c*gr_x3(i)*tanh(k_tanh*gr_x3(i))   ;
  else  
  V_gr(i) = (M*x4^2)/2 + (m*x4^2)/2 + ...
          + (l^2*m*gr_x3(i)^2)/2 + M*g*l  + ...
          + g*l*m - g*l*m*cos(gr_x1(i))   + ...
          + l*m*gr_x3(i)*x4*cos(gr_x1(i));

  V_dot1_gr(i) = -(2*l^3*m^2*gr_x3(i)^3*sin(2*gr_x1(i)) + ...
                 + 2*M*b_c_v*l*x4^2 + 2*M*b_p_v*l*gr_x3(i)^2 + ...
                 + 3*b_c_v*l*m*x4^2 + 3*b_p_v*l*m*gr_x3(i)^2 + ...
                 + 4*M*b_p_c*x4*tanh(k_tanh*gr_x3(i))*cos(gr_x1(i)) + ...
                 + 4*l^2*m^2*gr_x3(i)^2*x4*sin(gr_x1(i)) + ...
                 + 4*b_p_c*m*x4*tanh(k_tanh*gr_x3(i))*cos(gr_x1(i)) + ...
                 + 2*M*b_c_c*l*x4*tanh(k_tanh*x4) + ...
                 + 2*M*b_p_c*l*gr_x3(i)*tanh(k_tanh*gr_x3(i)) + ...
                 + b_c_v*l*m*x4^2*cos(2*gr_x1(i)) + ...
                 + b_p_v*l*m*gr_x3(i)^2*cos(2*gr_x1(i)) - 2*g*l*m^2*x4*sin(2*gr_x1(i)) - ...
                 - 4*g*l^2*m^2*gr_x3(i)*sin(gr_x1(i)) + ...
                 + 3*b_c_c*l*m*x4*tanh(k_tanh*x4) + ...
                 + 3*b_p_c*l*m*gr_x3(i)*tanh(k_tanh*gr_x3(i)) + ...
                 + 4*M*b_p_v*gr_x3(i)*x4*cos(gr_x1(i)) + 4*b_p_v*m*gr_x3(i)*x4*cos(gr_x1(i)) + ...
                 + b_c_c*l*m*x4*cos(2*gr_x1(i))*tanh(k_tanh*x4) + ...
                 + b_p_c*l*m*gr_x3(i)*cos(2*gr_x1(i))*tanh(k_tanh*gr_x3(i)) + ...
                 + 4*b_c_c*l^2*m*gr_x3(i)*tanh(k_tanh*x4)*cos(gr_x1(i)) + ...
                 + 4*M*l^2*m*gr_x3(i)^2*x4*sin(gr_x1(i)) - 2*M*g*l*m*x4*sin(2*gr_x1(i)) - ...
                 - 4*M*g*l^2*m*gr_x3(i)*sin(gr_x1(i)) + ...
                 + 4*b_c_v*l^2*m*gr_x3(i)*x4*cos(gr_x1(i)))/(l*(2*M + ...
                 + m - m*cos(2*gr_x1(i))));
  end
end

mesh(gr_x1, gr_x3, V_gr)
hold on

x1_vecQ = -10:.8:10;
x3_vecQ = -10:.8:10;

[ gr_x1Q, gr_x3Q ] = meshgrid( x1_vecQ, x3_vecQ );

V_dot_gr = zeros(size(gr_x1Q));

for i = 1:length(x1_vecQ)*length(x3_vecQ)
  if zInSaddle
  V_dot_gr(i) = - b_c_v*x4^2 - b_p_v*gr_x3Q(i)^2        - ...
                - b_c_c*x4*tanh(k_tanh*x4)             - ...
                - b_p_c*gr_x3Q(i)*tanh(k_tanh*gr_x3Q(i))   ;
  else
  V_dot_gr(i) =  -(2*l^3*m^2*gr_x3Q(i)^3*sin(2*gr_x1Q(i)) + ...
                 + 2*M*b_c_v*l*x4^2 + 2*M*b_p_v*l*gr_x3Q(i)^2 + ...
                 + 3*b_c_v*l*m*x4^2 + 3*b_p_v*l*m*gr_x3Q(i)^2 + ...
                 + 4*M*b_p_c*x4*tanh(k_tanh*gr_x3Q(i))*cos(gr_x1Q(i)) + ...
                 + 4*l^2*m^2*gr_x3Q(i)^2*x4*sin(gr_x1Q(i)) + ...
                 + 4*b_p_c*m*x4*tanh(k_tanh*gr_x3Q(i))*cos(gr_x1Q(i)) + ...
                 + 2*M*b_c_c*l*x4*tanh(k_tanh*x4) + ...
                 + 2*M*b_p_c*l*gr_x3Q(i)*tanh(k_tanh*gr_x3Q(i)) + ...
                 + b_c_v*l*m*x4^2*cos(2*gr_x1Q(i)) + ...
                 + b_p_v*l*m*gr_x3Q(i)^2*cos(2*gr_x1Q(i)) - 2*g*l*m^2*x4*sin(2*gr_x1Q(i)) - ...
                 - 4*g*l^2*m^2*gr_x3Q(i)*sin(gr_x1Q(i)) + ...
                 + 3*b_c_c*l*m*x4*tanh(k_tanh*x4) + ...
                 + 3*b_p_c*l*m*gr_x3Q(i)*tanh(k_tanh*gr_x3Q(i)) + ...
                 + 4*M*b_p_v*gr_x3Q(i)*x4*cos(gr_x1Q(i)) + 4*b_p_v*m*gr_x3Q(i)*x4*cos(gr_x1Q(i)) + ...
                 + b_c_c*l*m*x4*cos(2*gr_x1Q(i))*tanh(k_tanh*x4) + ...
                 + b_p_c*l*m*gr_x3Q(i)*cos(2*gr_x1Q(i))*tanh(k_tanh*gr_x3Q(i)) + ...
                 + 4*b_c_c*l^2*m*gr_x3Q(i)*tanh(k_tanh*x4)*cos(gr_x1Q(i)) + ...
                 + 4*M*l^2*m*gr_x3Q(i)^2*x4*sin(gr_x1Q(i)) - 2*M*g*l*m*x4*sin(2*gr_x1Q(i)) - ...
                 - 4*M*g*l^2*m*gr_x3Q(i)*sin(gr_x1Q(i)) + ...
                 + 4*b_c_v*l^2*m*gr_x3Q(i)*x4*cos(gr_x1Q(i)))/(l*(2*M + ...
                 + m - m*cos(2*gr_x1Q(i))));
  end
end

[ Vx1, Vx3 ] = gradient( V_dot_gr );% , 0.001, 0.001 );

Z = 10*ones(size(Vx1));
z = zeros(size(Vx1));

quiver3( x1_vecQ, x3_vecQ, Z, Vx1, Vx3, z )

figure
quiver( x1_vecQ, x3_vecQ, Vx1, Vx3)

figure
mesh(gr_x1Q, gr_x3Q, V_dot_gr)
