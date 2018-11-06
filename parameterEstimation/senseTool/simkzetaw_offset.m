function  y=simkzetaw(u,t,par)
% y=simkzetaw(u,t,par) simulates 
% Kw^2/(s^2+2*zeta*w*s+w^2)  using lsim
% par=[K zeta w]
% Example: par=[5 .4 1] inputt='inputsq' f1=.03 maintestsim
%
% 31/10-02,MK

K=par(1); zeta=par(2); w=par(3);
t=[0 t(1:length(t)-1)];
numc=K*w^2;  denc=[1 2*zeta*w w^2];
y=lsim(numc, denc, u, t)+par(1)*max(u); 




