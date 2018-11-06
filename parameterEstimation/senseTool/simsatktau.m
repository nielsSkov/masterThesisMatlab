function y=simsatktau(u,t,par)
% y=simsatktau(u,t,par) simulates a simple nonlinear example:
% first order linear transfer funktion with saturation.
% par=[e0 v0 tau]
% Example: par=[.5 1 5] (inp: f1=.03).
%
% 29/10-02,MK

h=t(2)-t(1);
nn=length(u);
e0=par(1), v0=par(2), tau=par(3); k=v0/e0
sysc=ss(-1/tau,5/tau,1,0); 
sysd=c2d(sysc,h); 
[ad,bd,cd,dd] = ssdata(sysd);
x=0; y=[0 0]; 
for jj=1:nn-1
   e=u(jj)-y(jj);
	v=k*e-(abs(e)>e0)*k*(e-sign(e)*e0);
   x1=ad*x + bd*v;
   y(jj+1,:)=[cd*x1 v];
   x=x1;
end
