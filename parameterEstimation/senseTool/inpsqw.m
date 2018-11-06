function [u,t]=inpsqw(f1,am,nu,h);
% function [u,t]=inpsqw(f1,am,nu,h)generates a square wave signal
% with fundamental frequency f1, amplitude am, and length nu
%
% 17/1-94,MK.

np=f1*nu*h;                              % Number of periods
t=[1:nu]*h;
u=am*sign(sin(np*2*pi*[1:nu]/nu))';  u(1:2)=[0 0]'; 




