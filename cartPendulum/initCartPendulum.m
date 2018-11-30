m    = .100+.075+.026;     % mass of pendulum            [kg]
M    = 6.28;               % mass of cart                [kg]
l    = 0.3235; %0.3348;    % length                      [m]
g    = 9.82;               % gravitational acceleration  [m s^-2]

r = 0.028;                 % radius of pulley            [m]

b_c_c = (3.021 + 2.746)/2; % cart coulomb friction       [N]
b_c_v = (1.937 + 1.422)/2; % cart viscous friction       [N m^-1 s]

b_p_c =  4e-3;             % pendulum coulomb friction   [N m]
b_p_v = .4e-3;             % pendulum viscous friction   [N m s]

k_tanh = 250;

k_tau = 93.4e-3;           % motor torque constant       [N m A^-1]