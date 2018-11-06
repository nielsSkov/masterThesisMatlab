function  y=simABC(u,t,par)
% Overparameterized example!
% y=simABC(u,t,par) simulates A/(s*B/C + 1) using lsim
% par=[A B C]
% Example: par=[2 3 4] inputt='inputsq' f1=.02 mainest
%
% 4/1-03,MK

A=par(1); B=par(2); C=par(3);
nc=A; dc=[B/C 1];
t=[0 t(1:length(t)-1)];
y=lsim(nc,dc,u,t);



