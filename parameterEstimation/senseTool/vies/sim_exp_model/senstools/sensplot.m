% sensplot.m plots the sensitivity measures versus xvector.
% The sensivity measures Smin, Simin, Ri and R (and D) as vectors/matrices,
% xvector and xlab ('xlabel') must exist in the work space.
% sensplot is a subprogram to minp.
%
% 30/8-94,MK


 subplot(221)
 plot(xvector,Smin),
% set(gca,'fontname','times'); set(gca,'fontsize',18)
 ylabel('Smin'), title('Min sensitivity')

 subplot(222)
 plot(xvector,Simin')
% set(gca,'fontname','times'); set(gca,'fontsize',18)
 ylabel('Simin'),  title('Min sens of each param')
 
 subplot(223)
 plot(xvector,R), 
%set(gca,'fontname','times'); set(gca,'fontsize',18)
 xlabel(xlab), ylabel('R'), title('R=Smax/Smin')
 
 subplot(224)
 plot(xvector,Ri')
% set(gca,'fontname','times'); set(gca,'fontsize',18)
 xlabel(xlab),  ylabel('Ri'),  title('Ri=Si/Simin')

subplot






