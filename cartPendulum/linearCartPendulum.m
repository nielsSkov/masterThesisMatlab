clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/masterThesisMatlab/cartPendulum_classic

run('latexDefaults.m')

syms m M l g r b_c_c b_c_v b_p_c b_p_v k_tanh k_tau

syms x1 x2 x3 x4 u

noFriction = 0;

if noFriction == 1
  b_c_c = 0; b_c_v = 0; b_p_c = 0; b_p_v = 0;
end

MM = [ m*(l^2)      -m*l*cos(x1)  ;
      -m*l*cos(x1)   M+m         ];

C = [ 0
      m*l*sin(x1)*x3^2 ];

G = [ -m*g*l*sin(x1)  ;
       0             ];

F = [ 0  ;
      u ];

B = [ b_p_c*tanh(k_tanh*x3) + b_p_v*x3  ;
      b_c_c*tanh(k_tanh*x4) + b_c_v*x4 ];

x_dot = [ x3                   ; % =   theta_dot
          x4                   ; % =       x_dot
          MM\(F - G - C - B ) ]; % = [ theta_dot_dot
                                 %         x_dot_dot ]
x = [ x1  ;
      x2  ;
      x3  ;
      x4 ];

%-----linearizing----------------------------------------------------------

A = jacobian(x_dot,x);

B = jacobian(x_dot,u);

x1 = 0; x2 = 0; x3 = 0; x4 = 0;
k_tanh = 1;

A = subs(A);
B = subs(B);

%-----controllability------------------------------------------------------

%controllability (check equation)
C = [ B A*B (A^2)*B (A^3)*B ]

run('initCartPendulum')

vpa(subs(A),4)
vpa(subs(B),4)

A = subs(A);
B = subs(B);

%controllability (check equation)
C = vpa( [ B A*B (A^2)*B (A^3)*B ], 4 )

rank = rank(C)

if rank == length(x)
  disp('The system is controllable')
end

%----design of cart position control during swing up-----------------------

x = [ x1 
      x2];

x_dot = [ x2
          (1/M)*u ]
        
A = jacobian(x_dot,x);

B = jacobian(x_dot,u);


A = [ 0 1
      0 0 ];

B = [ 0
      1/M ];

C = vpa( [ B A*B ], 4 )

p = [ -1 -2 ];

k = place(A,B,p)