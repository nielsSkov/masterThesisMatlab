function [ q_dot ]  = simPendulum( t, q, m, l, g, k_tanh, b_p_c, b_p_v )
  
  theta          = q(1);
  theta_dot      = q(2);
  
  z1 = theta;
  z2 = theta_dot;

  % m*(l^2)*theta_dd = m*g*l*sin(theta) - b_p_v*theta_d -tanh(k_tanh*theta_d) b_p_c
  
  % theta_dd = (g/l)*sin(theta) - b_p_v*theta_d/(m*(l^2)) -tanh(k_tanh*theta_d) b_p_c/(m*(l^2))
  
  % z1_dot = theta_dot = z2
  % z2_dot = theta_dot_dot

  q_dot = ...
    [ z2                                                               ; % = [ theta_dot
     (g/l)*sin(z1)-b_p_v*z2/(m*(l^2))-tanh(k_tanh*z2)*b_p_c/(m*(l^2)) ]; % =   theta_dot_dot ]
end