% testprob52. Data for Problem 5.2
% 24/1-03,mk
clear
mk_14_11_29
whos
t=(1:length(volt))/50;
plot(t,volt,t,strom,t,tach)
pause
y=tach(:)/0.03;
u=volt(:);
save measdcml1 u y t
process='dcml1'
par0=[31 1.0];
mainest
par0
dev=(pare(:)-par0(:))./par0(:)*100

pause
clear
mk_14_11_29
t=(1:length(volt))/50;
u=volt(:);
% from plot it is seen that strom is inverted:
y=[-strom(:)/0.217, tach(:)/0.03]; % y=[i w]
save measdcml u y t
process='dcml'
% par0=[1.2 .03 8.7e-4 5e-5] %Are in progdatadcml:

mainest
dev=(pare(:)-par0(:))./par0(:)*100

% Problem 6.1
disp('            ')
disp('Problem 6.1:')
disp('************')
dpar
sigpar
[Smin,Simin,R]=sens(Hrn)
