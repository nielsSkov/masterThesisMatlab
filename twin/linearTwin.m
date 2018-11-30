clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twin

run('latexDefaults.m')

syms m1 m2 M l1 l2 g r b_c_c b_c_v b_p1_c b_p1_v b_p2_c b_p2_v k_tanh k_tau

syms x1 x2 x3 x4 x5 x6 u

noFriction = 0;

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

B = [ b_p1_c*tanh(k_tanh*x4) + b_p1_v*x4  ;
      b_p2_c*tanh(k_tanh*x5) + b_p2_v*x5  ;
      b_c_c*tanh(k_tanh*x6)  + b_c_v*x6  ];

x_dot = [ x4                   ; % =   theta1_dot
          x5                   ; % =   theta2_dot
          x6                   ; % =        x_dot
          MM\(F - G - C - B ) ]; % = [ theta1_dot_dot
                                 %     theta2_dot_dot
                                 %          x_dot_dot ]
x = [ x1  ;
      x2  ;
      x3  ;
      x4  ;
      x5  ;
      x6 ];

A = jacobian(x_dot,x);

B = jacobian(x_dot,u);

x1 = 0; x2 = 0; x3 = 0; x4 = 0; x5 = 0; x6 = 0;
k_tanh = 1;

b_c_c = 0; b_c_v = 0;
if noFriction == 1
  b_p1_c = 0; b_p1_v = 0; b_p2_c = 0; b_p2_v = 0;
end

A = subs(A)
B = subs(B)

%-------controllability----------------------------------------------------

%controllability
C = [ B A*B (A^2)*B (A^3)*B (A^4)*B (A^5)*B ]

for i = 1:4
  if i == 1
    fprintf('\n\n-------  m1 == m2   &   l1 == l2  -------\n')
    run('initTwin')
    
    m2 = m1;  l2 = l1;
    
  elseif i == 2
    fprintf('\n\n-------  m1 != m2   &   l1 == l2  -------\n')
    run('initTwin')
    
    l2 = l1;
    
  elseif i == 3
    fprintf('\n\n-------  m1 == m2   &   l1 != l2  -------\n')
    run('initTwin')
    
    m2 = m1;
    
  elseif i == 4
    fprintf('\n\n-------  m1 != m2   &   l1 != l2  -------\n')
    run('initTwin')
  end
  
  fprintf( 'm1=%.4f, m2=%.4f, l1=%.4f, l2=%.4f\n', m1, m2, l1, l2 )


  vpa(subs(A),4)
  vpa(subs(B),4)

  A_n = double(subs(A));
  B_n = double(subs(B));

  %controllability
  C_n = [ B_n A_n*B_n (A_n^2)*B_n  (A_n^3)*B_n (A_n^4)*B_n (A_n^5)*B_n ]

  rankC = rank(C_n)

  if rankC == length(x)
    disp('The system is controllable!')
  else
    disp('The system is NOT controllable!')
  end

end

%% -------LQR Design-------------------------------------------------------

% theta1_max    [rad]       theta2_max    [rad]       x_max        [m]
  x1Max = 0.01;             x2Max = 0.01;             x3Max = 0.02;

% theta1Dot_max [rad s^-1]  theta2Dot_max [rad s^-1]  xDot_max     [m s^-1] 
  x4Max = 2;                x5Max = 2;                x6Max = 1;

iaMax  = 4.85/1000;       % [A] ,  max continuous = 4.85 A
uMax   = iaMax*k_tau/r;   % [N]

Q = ...
[ 1/(x1Max^2) 0           0           0           0           0            ;
  0           1/(x2Max^2) 0           0           0           0            ;
  0           0           1/(x3Max^2) 0           0           0            ;
  0           0           0           1/(x4Max^2) 0           0            ;
  0           0           0           0           1/(x5Max^2) 0            ;
  0           0           0           0           0           1/(x6Max^2) ];

R = 1/(uMax^2);

%optimize J = Integral { x'Qx + u'Ru } dt

kLQR = lqr(A_n, B_n, Q, R);

%display compact k-vector with 2 digits after comma
fprintf('kLQR = [ %.2f  %.2f  %.2f  %.2f  %.2f  %.2f ]\n\n', kLQR)

%control law
%
% u = -kLQR*X ,   X = [ x1 x2 x3 x4 x5 x6 ]^T






