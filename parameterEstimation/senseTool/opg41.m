
H=tf([0 0 40],[1 2*0.6*2 2*2]);

Hzoh=c2d(H,1,'zoh')
Htus=c2d(H,1,'tustin')


DCH=10
DCzoh=sum(Hzoh.num{1})/sum(Hzoh.den{1})
DCtus=sum(Htus.num{1})/sum(Htus.den{1})

step(H,Hzoh,Htus)

