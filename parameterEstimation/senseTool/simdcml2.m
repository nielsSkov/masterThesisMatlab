function  [y] = simdcml2(um,t,par)
% [i,w] = sidcml2(um,t,par)
% um is the input voltage, i is current, w is velocity,  
% t is the time vector, and par = [R  Km  J  B0].

% Motor parameters:
R = par(1);
Km = par(2);   J = par(3);    B0 = par(4);

odepar{1}=t;
odepar{2}=um;
odepar{3}=Km;
odepar{4}=J;
odepar{5}=B0;
odepar{6}=1/R; %G0
odepar{7}=1/R; %G1
odepar{8}=2000; %U1
odepar{9}=0; %T0

opts=odeset('MaxStep',min(diff(t))/10);
opts=[];

[dum,w]=ode45('odedcmn',t,0,opts,odepar);

i=zeros(length(w),1);
for c=1:length(w),
 i(c)=odedcmn(t(c),w(c),1,odepar);
end

y=[i(:),w(:)];




