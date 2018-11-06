function  y=simktaufilt(u,t,par)
% function  y=simktaufilt(u,t,par)  simulates K/(1+s*tau) using c2d and filter.
% par=[K tau]
%
% 12/1-03,MK

h=t(2)-t(1);
K=par(1); tau=par(2);
nc=K; dc=[tau 1];
sysc=tf(nc,dc); sysd=c2d(sysc,h); [nz,dz] = tfdata(sysd);
y=filter(nz{1},dz{1},u);    % Notice {} to obtain cell content


