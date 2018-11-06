
% problem when frequency too high: low gain but no noise
%   -> appears OK

clear
process='kzetaw';
inputt='inpsqw';
par=[40 0.6 2];
h=0.01/par(3);
nu=1e4;
f1v=logspace(log10(par(3))-0.2,log10(par(3)),10);
maininp



