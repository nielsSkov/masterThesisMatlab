% sellip4 plots 4 sensitivity ellipse for given Hrn
% after [psi,Hrn]=psif(....);
% The j values, labels and titles may have to be changed.
% sellip4sinus 
% 3/1-03,MK

% Run mainest, gives t, par0 and simmod. For each j-value:(for example)
% j=1; w1=.04; u1=sin(w1*t); 
% [psi,Hrn]=psinf(u1,t,par0,simmod);
% [Smin,Simin,R,Ri]=sens(Hrn)


if ~exist('Hrn'), disp('Hrn must exist !'), break,   end
[T d]=eig(Hrn);                     
h1=1/sqrt(d(1,1));   h2=1/sqrt(d(2,2));           % semiaxes
v=2*pi*[0:.01:1];    nv=length(v);
xd=h1*cos(v);                                     % diagonal form
yd=h2*sin(v);
x1=T(1,1)*xd+T(1,2)*yd;           
y1=T(2,1)*xd+T(2,2)*yd; 


% For labels and titles: (change here)
xlab='k/k0';  ylab='tau/tau0'; 

if j==1     
subplot(221)
mi=min([x1 y1]); ma=max([x1 y1]); axis([mi ma mi ma])
plot(x1,y1) , set(gca,'fontname','times'); set(gca,'fontsize',18)
title(['w =',num2str(w1)])
axis([mi ma mi ma]);
end

if j==2     
subplot(222)
% mi=min([x1 y1]); ma=max([x1 y1]); axis([mi ma mi ma])
plot(x1,y1), set(gca,'fontname','times'); set(gca,'fontsize',18)
ylabel(ylab), title(['w =',num2str(w2)])
axis([mi ma mi ma]);
end

if j==3     
subplot(223)
% mi=min([x1 y1]); ma=max([x1 y1]); axis([mi ma mi ma])
plot(x1,y1), set(gca,'fontname','times'); set(gca,'fontsize',18)
xlabel(xlab), title(['w =',num2str(w3)])
axis([mi ma mi ma]);
end


if j==4    
subplot(224)
mi=min([x1 y1]); ma=max([x1 y1]); axis([mi ma mi ma])
plot(x1,y1), set(gca,'fontname','times'); set(gca,'fontsize',18)
xlabel(xlab), ylabel(ylab), title(['w =',num2str(w4)])
axis([mi ma mi ma]);
end

axis;                       






 
