function [u,t]=inpsqramp(f1,am,nu,h);
% [u,t]=inpsqramp(f1,am,nu,h); generates a square wave signal - 
% superposed by a rampe - with fundamental frequency  f1, 
% final amplitude am, and length nu
%
% 17/1-03,MK.

np=f1*nu*h;                                    % Number of periods
t=[1:nu]*h;
u=am*sign(sin(np*2*pi*[1:nu]/nu))';  u(1:2)=[0 0]';  
u=u.*[1:nu]'/nu;                               % * ramp with ampl 1


