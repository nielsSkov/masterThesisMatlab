
rhoa=2.7e3; %kg/m3
rd=0.1;
dd=0.002;

Md=pi*rd*rd*dd*rhoa
Jd=Md*rd*rd/2

J=8e-5;
B=5e-5;
R=1.2;
K=0.03;

tauM=R*(J+Jd)/(K*K+B*R)
KM=K/(K*K+B*R)

t=0:0.01:5;

figure(1)
plot(t,simdcml(ones(1,501),t,[R K J+Jd B]),...
     t,step(tf([0 KM],[tauM 1]),t));


% b

figure(2)
plot(t,simdcml(10*ones(1,501),t,[R K J+Jd B]))

% c

G1=1.6;
G0=0.5;
u1=3;
Tc=0;

[u,t]=inpstair(4,12,2000,0.01);

yode=simdcmode(u,t,[G0  G1  u1  K  J+Jd  B  Tc]);
ymk=simdcmn(u,t,[G0  G1  u1  K  J+Jd  B  Tc]);

figure(3)
plot(t,yode,t,ymk)

% c

G1=1.6;
G0=0.5;
u1=3;
Tc=0.025;

[u,t]=inpstair(4,12,2000,0.01);

yode2=simdcmode(u,t,[G0  G1  u1  K  J+Jd  B  Tc]);
ymk2=simdcmn(u,t,[G0  G1  u1  K  J+Jd  B  Tc]);

figure(3)
plot(t,yode,t,yode2)

