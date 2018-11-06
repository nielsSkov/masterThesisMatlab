% progprog.m creates program data for mainest: progdatadcml.mat
% 27/11-02,MK

clear
process='dcml';
par=[2 .03 70e-6  80e-6];
par0=par*diag([1.3 .75 1.2 .8]);

save progdatadcml process par0 






