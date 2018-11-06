


mk_14_11_29
t=(1:500)/50;
y=tach(:)/0.03;
u=volt(:);
save measdcml1 u y t

y=[ -strom(:) tach(:)/0.03];
save measdcml2 u y t

% a
if 0
process='dcml1';
par0=[31 1];

mainest
end

% b

process='dcml2';
%par = [R    Km     J    B0].
par0=  [10   0.05    1e-3 0.0001];
%load measdcml2
%y0=simdcml2(u,t,par0);
%clf
%subplot(211)
%plot(t,y(:,1),t,y0(:,1))
%subplot(212)
%plot(t,y(:,2),t,y0(:,2))
%slut
clf
mainest









