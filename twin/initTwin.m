m1   = .100+.075+.026;     % mass of pendulum 1          [kg]
m2   = .100;               % mass of pendulum 2          [kg]
M    = 5.273;              % mass of cart                [kg]
l1   = 0.3235;             % length                      [m]
l2   = 0.2;                % length                      [m]
g    = 9.82;               % gravitational acceleration  [m s^-2]

r = 0.028;                 % radius of pulley            [m]

b_c_c = (3.021 + 2.746)/2; % cart coulomb friction       [N]
b_c_v = (1.937 + 1.422)/2; % cart viscous friction       [N m^-1 s]

b_p1_c =  4e-3;            % pendulum coulomb friction   [N m]
b_p1_v = .4e-3;            % pendulum viscous friction   [N m s]

b_p2_c =  4e-3;            % pendulum coulomb friction   [N m]
b_p2_v = .4e-3;            % pendulum viscous friction   [N m s]

k_tan = 250;

k_tau = 93.4e-3;           % motor torque constant       [N m A^-1]

% K = [      ]; % poles in [   ]
% 
% k1 = K(1);
% k2 = K(2);
% k3 = K(3);