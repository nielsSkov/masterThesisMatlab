function y=simspn(u,t,par) 
% y=simspn(i,t,par) simulates a nonlinear loudspeaker
% with voltage input and outputs x and i
% Displacement dependent force factor Bl(x)=Bl·e^{-c1(x+c2)²}
% Uses state space description of mechanical part from f=Bl*i to x
% % par=[m r k R Bl c1 c2],        (length 7)
%
% 14/1-03,MK

h=t(2)-t(1); nn=length(u);  
m=par(1); r=par(2); k=par(3); R=par(4); Bl=par(5); c1=par(6); c2=par(7);

% State space description from f to x:
ac=[0 1;-k/m -r/m]; bc=[0;1/m];
cc=[1 0]; dc=0;
syscss=ss(ac,bc,cc,dc);
% Descretization:
sysdss=c2d(syscss,h);  
[ad,bd,cd,dd] = ssdata(sysdss);

xv=[0 0]'; 
for jj=1:nn
   Blx=Bl*exp(-c1*(xv(1)+c2)^2);
   i=(u(jj)-Blx*xv(2))/R;
   f=Blx*i;
   xv1=ad*xv+bd*f;	% input ss equation
   x = cd*xv; 			% output ss equation
   yv(jj,:)=[x i];   % yv=[x i]
   xv=xv1;				% update
end

y=yv;

 


 


