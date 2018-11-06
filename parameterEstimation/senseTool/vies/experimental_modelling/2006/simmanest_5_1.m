function  y=simmanest(u,t,par)
% simmanest simulates K/(1+s*tau) using  rampinvariant 
% transformation ('foh') and filter.
% par=[K tau], e.g par0=[1,1].
% To run Problem 5.1: 
% >> process='manest'; par0=[1,1]; mainest
% 22/1-03,MK

h=t(2)-t(1);
sysctf=tf(par(1),[par(2) 1]);
sysdtf=c2d(sysctf,h,'foh');
[nz,dz]= tfdata(sysdtf,'v');   % NB 'v' for vector format - not cell
y=filter(nz,dz,u);

