function  y=simktaulsim(u,t,par)
% y=simktaulsim(u,t,par) simulates K/(1+s*tau) using lsim, Example 4. 
% par=[K tau] (equal to simktau)
% Example: par=[2 3] inputt='inputsq' f1=.02 maintests
%
% 31/10-02,MK

K=par(1); tau=par(2);
nc=K; dc=[tau 1];
t=[0 t(1:length(t)-1)];
y=lsim(nc,dc,u,t);



