function [u,t]=inpstair(ns,am,nu,h);
% function [u,t]=inpstair(ns,am,nu,h);
% generates a staircase signal with ns stairs
% final amplitude am, and length nu. h is time step.
%
% 25/7-97,MK.

t=[1:nu]*h;
sam=am/ns;  snu=ceil(nu/ns);
u=0;

for j=1:ns
  u=[u j*sam*ones(1,snu)];
end
u=u(1:nu);

