clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/cartPendulum

run('latexDefaults.m')

syms T11 T12 T13 T14
syms T21 T22 T23 T24
syms T31 T32 T33 T34
syms T41 T42 T43 T44

syms fa1 fa2 fa3
syms fb gb

syms x1 x2 x3 x4
syms M m l g

syms f1 f2 g1 g2

%g1 = cos(x1)/(l*(M + m - m*cos(x1)^2));
%g2 = 1/(M + m - m*cos(x1)^2);

dTdx = [ T11  T12  T13  T14  ;
         T21  T22  T23  T24  ;
         T31  T32  T33  T34  ;
         T41  T42  T43  T44 ];

% f = [ x3  ;
%       x4  ;
%       f1  ;
%       f2 ];

gg = [ 0   ;
      0   ;
      g1  ;
      g2 ];

%system of equations
eq1 = dTdx(1,:)*gg == 0;
eq2 = dTdx(2,:)*gg == 0;
eq3 = dTdx(3,:)*gg == 0;
eq4 = dTdx(4,:)*gg == gb;
eq5 = T13 == 0;
eq6 = T14 == 0;
eq7 = T23 == 0;
eq8 = T24 == 0;

% eq5 = dTdx(1,:)*f == fa1;
% eq6 = dTdx(2,:)*f == fa2;
% eq7 = dTdx(3,:)*f == fa3;
% eq8 = dTdx(4,:)*f == fb ;


[ T13, T14, ...
  T23, T24, ...
  T33, T34, ...
  T43, T44  ]   = solve( eq1, eq2, eq3, eq4, eq5, eq6, eq7, eq8,  ...
                         [ T13 T14 T23 T24 T33 T34 T43 T44 ]      )




%Jacobians of possible transforms
J_T1 = [ 0               1   0  0          ;
        -x4*(sin(x1))/l  0  -1  cos(x1)/l  ;
         1               0   0  0          ;
         0               0   1  0         ];

J_T2 = [ 1               0   0  0          ;
        -x4*(sin(x1))/l  0  -1  cos(x1)/l  ;
         0               1   0  0          ;
         0               0   0  1         ];

%determinant of the Jacobians
detJ_T1 = det(J_T1)
detJ_T2 = det(J_T2)


syms b_p_c b_p_v b_c_c b_c_v k_tanh u

MM = [  m*(l^2)      -m*l*cos(x1)  ;
       -m*l*cos(x1)   M+m         ];

C = [ 0
      m*l*sin(x1)*x3^2 ];

G = [ -m*g*l*sin(x1)  ;
       0             ];

F = [ 0  ;
      u ];

B = [ b_p_c*tanh(k_tanh*x3) + b_p_v*x3  ;
      b_c_c*tanh(k_tanh*x4) + b_c_v*x4 ];

f_3_4 = MM\(- C - B - G );

f3_x = simplify( f_3_4(1) )
f4_x = simplify( f_3_4(2) )

syms eta1 eta2 eta3 xi

T_inv = { eta1, eta3, (cos(eta1)/l)*xi - eta2, xi };

f3 = simplify( subs(f3_x, { x1, x2, x3, x4 }, T_inv ) )

f4 = simplify( subs(f4_x, { x1, x2, x3, x4 }, T_inv ) )





















%solving system of equatioon for Tij (8 eqations with 8 unknown)
% [ T13, T14, ...
%   T23, T24, ...
%   T33, T34, ...
%   T43, T44  ]   = solve( eq1, eq2, eq3, eq4, eq5, eq6, eq7, eq8,  ...
%                          [ T13 T14 T23 T24 T33 T34 T43 T44 ]      )
%result
%  T13 =  (fa1*g2)/(f1*g2 - f2*g1);
%  T14 = -(fa1*g1)/(f1*g2 - f2*g1);
%  T23 =  (fa2*g2)/(f1*g2 - f2*g1);
%  T24 = -(fa2*g1)/(f1*g2 - f2*g1);
%  T33 =  (fa3*g2)/(f1*g2 - f2*g1);
%  T34 = -(fa3*g1)/(f1*g2 - f2*g1);
%  T43 = -(f2*gb - fb*g2)/(f1*g2 - f2*g1);
%  T44 =  (f1*gb - fb*g1)/(f1*g2 - f2*g1);

% gb  = dTdx(4,:)*g;
% fa1 = dTdx(1,:)*f;
% fa2 = dTdx(2,:)*f;
% fa3 = dTdx(3,:)*f;
% fb  = dTdx(4,:)*f;
% 
% T13 = solve( T13 ==  (fa1*g2)/(f1*g2 - f2*g1),        T13 )
% T14 = solve( T14 == -(fa1*g1)/(f1*g2 - f2*g1),        T14 )
% T23 = solve( T23 ==  (fa2*g2)/(f1*g2 - f2*g1),        T23 )
% T24 = solve( T24 == -(fa2*g1)/(f1*g2 - f2*g1),        T24 )
% T33 = solve( T33 ==  (fa3*g2)/(f1*g2 - f2*g1),        T33 )
% T34 = solve( T34 == -(fa3*g1)/(f1*g2 - f2*g1),        T34 )
% T43 = solve( T43 == -(f2*gb - fb*g2)/(f1*g2 - f2*g1), T43 )
% T44 = solve( T44 ==  (f1*gb - fb*g1)/(f1*g2 - f2*g1), T44 )

% clear all, close all, clc
% syms T13 g2 g1 f1 f2 T14
% 
% fa1 = T13*f1+T14*f2;
% 
% solve( T13 == fa1*(g2)/(f1*g2-f2*g1), T13)













