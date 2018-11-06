function  y=simktauloop(u,t,par)
% y=simktauloop(u,t,par) simulates K/(1+s*tau)
% using ss (xdot=-1/tau*x+k/tau*u, y=x) c2d and a for loop.
% par=[K tau]
%
% 22/10-02,MK

h=t(2)-t(1);
nn=length(u);
x=0;
K=par(1); tau=par(2);
sysc=ss(-1/tau,K/tau,1,0); sysd=c2d(sysc,h); [ad,bd,cd,dd] = ssdata(sysd);

for jj=1:nn
   x1=ad*x + bd*u(jj);
   y(jj)=cd*x1;
   x=x1;
end




