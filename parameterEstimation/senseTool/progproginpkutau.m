% progproginp creates program data for maininp: progdatainpkutau.mat
% 15/103,MK

clear
process='kutau';
inputt='inpsqram';
par=[1.5,4,2];
h=par(3)/20;
f1v=.05;
amv=[ 2 3 5 6 8 10 15 20];

save progdatainpkutau   process inputt par h f1v amv

