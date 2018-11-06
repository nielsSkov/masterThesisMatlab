% testsimsplf: Data for test of simsplf, example ?
% Stepresponse
% 14/1-03,MK

par = [.0125  5.2  12000  5 10];
h = 2e-5;
n=500;
am = 4;
[u,t] = inpstep(1,am,n,h);
y = simsplf(u,t,par);
plot(t,1000*y(:,1),t,y(:,2))
title('Lodspeaker displacement and current')
