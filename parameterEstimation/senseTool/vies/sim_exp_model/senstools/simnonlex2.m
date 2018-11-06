function y=simnonlex2(u,t,par)
% y=simnonlex2(u,t,par) simulates a nonlinear example:
% second order linear transfer funktion with saturation.
% par=[e0 v0 zeta w]
% Example: par=[.5 1 2 .2] f1=.03
%
% 31/10-02,MK

h=t(2)-t(1);
nn=length(u);
e0=par(1), v0=par(2), zeta=par(3); w=par(4);
k=v0/e0

numc=10*w^2;  denc=[1 2*zeta*w w^2];
sysctf=tf(numc, denc) 
sysdtf=c2d(sysctf,h); 
sysdss=ss(sysdtf);  
[ad,bd,cd,dd] = ssdata(sysdss);

x=[0 0]'; y=[0 0]; 
for jj=1:nn-1
   e=u(jj)-y(jj);
	v=k*e-(abs(e)>e0)*k*(e-sign(e)*e0);
   x1=ad*x + bd*v;
   y(jj+1,:)=[cd*x1 v];
   x=x1;
end


