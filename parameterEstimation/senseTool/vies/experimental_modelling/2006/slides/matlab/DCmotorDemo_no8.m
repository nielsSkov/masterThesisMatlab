% DCmotorDemo
% Estimates linear (dcml) and nonlinear (dcmn) model 
% of dc motor from measured data
% measdcml8.mat and measdcmn8.mat
% Uses progdatadcml8.mat and progdatadcmn8.mat
%
% 5/3-03,MK

clear
figure(1)
process='dcml'
no='8'
mainest
legend('System','Model')
pause
clear
process='dcmn'
no='8'
mainest
legend('System','Model')

