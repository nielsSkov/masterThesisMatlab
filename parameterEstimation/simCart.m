function [ q_dot ]  = simCart( t, q, u, tvec, m, M, l, g,        ...
                               k_tanh, r, k_tau, b_p_c, b_p_v,   ...
                               b_c_c_p, b_c_c_m, b_c_v           )
  
  x          = q(1);
  x_dot      = q(2);
  
  z1 = x;
  z2 = x_dot;
  
  v = interp1(tvec,u,t)*k_tau/r;
  
  vDirec = sign(v);
  
  if x_dot > 0 || ( x_dot == 0 && vDirec == 1 )
    b_c_c = b_c_c_p;
  elseif x_dot < 0 || ( x_dot == 0 && vDirec == -1 )
    b_c_c = b_c_c_m;
    
  end
  
  b_c_v = 0;
  
  %  x_dot_dot = (v - b_c_c*tanh(k_tanh*x_dot) - b_c_v*x_dot)/M
  
  % z1 = x ==> z1_dot = x_dot ==>  z1_dot = z2 = x_dot , z2_dot = x_dot_dot 

  q_dot = [ z2                                        ; % = [  x
            (v - b_c_c*tanh(k_tanh*z2) - b_c_v*z2)/M ]; % =    x_dot ]
end