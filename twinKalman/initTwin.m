%
%                    addjustment from
%    measured            estimate
m1 = .100+.075+.026      +.02250;  % mass of pendulum 1          [kg]
l1 = .3218               -.00490;  % length of pendulum 1        [m]

%                    addjustment from
%    measured            estimate
m2 = .100+.075+.026+.05  +.00000;  % mass of pendulum 2          [kg]
l2 = .2000               -.00000;  % length of pendulum 2        [m]

%    estimated
M  = 6.28;                         % mass of cart                [kg]

%    gravity in Denmark
g  = 9.82;                         % gravitational acceleration  [m s^-2]

%    measured
r  = .028;                         % radius of pulley            [m]

% cart friction is more complex
% (see parameter estimation)
b_c_c  = 0;                        % cart coulomb friction       [N]
b_c_v  = 0;                        % cart viscous friction       [N m^-1 s]

%        estimated
b_p1_c = 4.1e-3;                   % pendulum 1 coulomb friction [N m]
b_p1_v =  .5e-3;                   % pendulum 1 viscous friction [N m s]

%         guess
b_p2_c = 4.1e-3;                   % pendulum 2 coulomb friction [N m]
b_p2_v =  .5e-3;                   % pendulum 2 viscous friction [N m s]

%        for steap slope of tanh
k_tanh = 250;                      %tanh constant                [1]

%        from datasheet
k_tau  = 93.4e-3;                  % motor torque constzant       [N m A^-1]