function  [y] = simdcmode(um,t,par)
% [i,w] = sidcmn(um,t,par)
% um is the input voltage, i is current, w is velocity,  
% t is the time vector, and par = [G0  G1  U1  Km  J  B0  T0].

% Motor parameters:
G0 = par(1);   G1 = par(2);   U1 = par(3);   
Km = par(4);   J = par(5);    B0 = par(6);     T0 = par(7);

odepar{1}=t;
odepar{2}=um;
odepar{3}=Km;
odepar{4}=J;
odepar{5}=B0;
odepar{6}=G0;
odepar{7}=G1;
odepar{8}=U1;
odepar{9}=T0;

opts=odeset('MaxStep',min(diff(t))/10);
%opts=[];

[dum,w]=ode45('odedcmn',t,0,opts,odepar);

i=zeros(length(w),1);
for c=1:length(w),
 i(c)=odedcmn(t(c),w(c),1,odepar);
end

y=[i(:),w(:)];




