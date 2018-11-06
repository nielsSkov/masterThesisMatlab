function y=simdcml(u,t,par)
% y=[i,w]=simdcml(u,t,par) simulates a  linear dc-motor with 
% input u and outputs i and w.  
% w/u = K/R/(J*s+B+K^2/R),  i/u=(J*s+B)/R/(J*s+B+K^2/R)      
% par=[R K J B]
%
% 27/11-02,MK

if t(1)>0, t=[0 t(1:length(t)-1)]; end
nw=par(2)/par(1); dw=[par(3) par(4)+par(2)^2/par(1)];
ni=[par(3) par(4)]/par(1);
w = lsim(nw,dw,u,t);
i = lsim(ni,dw,u,t);
y=[i w];




