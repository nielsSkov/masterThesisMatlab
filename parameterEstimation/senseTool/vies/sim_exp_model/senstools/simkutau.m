function  [y,ku,v]=simkutau(u,t,par)
% simkutau simulates the nonlinear example 9, 
% K(u)/(1+s*tau)  K(u)=ko*(1+k1/(0.5+u^2))
% using lsim
% par=[ko, k1, tau].
% 26/11-02,MK

h=t(2)-t(1);
t=[0 t(1:length(t)-1)];
nc=par(1); dc=[par(3) 1];
ku=(1+par(2)./(.5+u.^2));
v=ku.*u;
y=lsim(nc,dc,v,t);

