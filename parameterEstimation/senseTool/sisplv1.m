function y=sisplv1(u,t,par1) 
% y=sisplv1(i,t,par) simulates a linear VOLTAGE driven 
% loudspeaker
% xp/i = Bl*s/(m*s^2+r*s+k), (xp=dx/dt)       
% and the electrical part i=(u-Bl*xp)/R     
% par=[m r k R Bl],        (length 5)
% 24/1-98,MK, 1-version only R as free par 25/4-98,MK

h=t(2)-t(1); ns=length(u);

par=[0.0125 5.25 12500 5 10];
m=par(1); r=par(2); k=par(3);  Bl=par(5);
R=par1;

% Open-loop transfer functio from Bl*i to x:
[nz,dz]=c2dm(1,[m r k],h,'foh');

% Open-loop transfer functio from Bl*i to xp=dx/dt:
[nzp,dzp]=c2dm([1 0],[m r k],h,'foh');
        
j=1; x=0; xp=0; x1=[0 0]; xp1=[0 0];

while j<=ns
  i=(u(j)-Bl*xp)/R;
  [x,x1]=filter(Bl*nz,dz,i,x1);   
  [xp,xp1]=filter(Bl*nzp,dzp,i,xp1);      
  xt(j)=x;  it(j)=i; 
  j=j+1;
end  

y= [xt(:) it(:)]; 

 

