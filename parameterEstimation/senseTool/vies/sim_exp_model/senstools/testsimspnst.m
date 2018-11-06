% testsimspnst: Data for test of simspn, example 8
% Input staircase
% 14/1-03,MK

par = [.0125  5.2  12000  5 10 1e6 2e-4];
h = 2e-5;
n=2500;
am = 8;
ns=4;
[u,t] = inpstair(ns,am,n,h);
y = simspn(u,t,par);
plot(t,1000*y(:,1),t,y(:,2))
title('Nonlinear loudspeaker displacement and current')
 