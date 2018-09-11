clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/twin

run('latexDefaults.m')

syms m1 m2 M l1 l2 g r b_c_c b_c_v b_p1_c b_p1_v b_p2_c b_p2_v k_tanh k_tau

syms x1 x2 x3 x4 x5 x6 u

noFriction = 1;

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

if noFriction == 1
  b_c_c = 0; b_c_v = 0; b_p1_c = 0; b_p1_v = 0; b_p2_c = 0; b_p2_v = 0;
end

subs(A)
subs(B)

[A^2 *B A*B B]

run('initTwin')

subs(A)
subs(B)

