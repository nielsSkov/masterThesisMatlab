%
%                    addjustment from
%        measured        estimate
m     = .100+.075+.026  +0.0225;  % mass of pendulum 1          [kg]
l     = 0.3235          -.00658;  % length of pendulum 1        [m]

%m2     = .100+.075+.026+.05 +.0132;  % mass of pendulum 2          [kg]
%l2     = .2                 -.0000; % length of pendulum 2        [m]

%        estimated
M      = 6.28;                     % mass of cart                [kg]

%        gravity in Denmark
g      = 9.82;                     % gravitational acceleration  [m s^-2]

%        measured
r      = 0.028;                    % radius of pulley            [m]

% cart friction is more complex
% (see parameter estimation)
b_c_c  = 0;                        % cart coulomb friction       [N]
b_c_v  = 0;                        % cart viscous friction       [N m^-1 s]

%        estimated
b_p_c  = 4.1e-3;                   % pendulum coulomb friction   [N m]
b_p_v  =  .5e-3;                   % pendulum viscous friction   [N m s]

%        for steap slope of tanh
k_tanh = 250;                      %tanh constant                [1]

%        from datasheet
k_tau  = 93.4e-3;                  % motor torque constant       [N m A^-1]