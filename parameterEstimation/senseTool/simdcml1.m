function  y=simdcml1(u,t,par)
%  simulates K/(1+s*tau) using lsim
% par=[K tau]

K=par(1); tau=par(2);
nc=K; dc=[tau 1];
t=[0 t(1:length(t)-1)];
y=lsim(nc,dc,u,t);



