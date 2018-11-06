function [u,t]=inpstep(f1,am,n,h)
% [u,t]=inpstep(f1,am,n,h) creates a step u of amplitude a and
% length n, and a time sequence t with time step h.
% f1 is a dummy input to give same input arguments as the other
% input functions, e.g. inpsqw.
% 7/9-94,MK
 
t=h*(1:n);
u=am*[0 ones(1,n-1)];
u=u(:);

