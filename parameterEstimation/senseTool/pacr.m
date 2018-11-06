% pacr simulates a loudspeaker with time-varying
% coil resistance R:  sisplv_r.m
% Estmates a constant value of R: sisplv1.m
% The estimated parameter deviation is compared
% with the actual parameter variation
% 25/4-98,MK

splv
save desplv1 t u y
process='splv1';
time=h*ns
par0=par(4)
mest
parmean0=mean(rt)
dpar
dpar0=[pare-rt(1) rt(ns)-pare]/pare*100

