function z=simfktau(wv,av,par)
% function z=simfktau(wv,av,par) calculates real (a) and imaginary (b)
% parts of the frequency response at frequencies wv and amplitudes av 
% of the transfer function par k/(1+s*tau), k=par(1)  tau=par(2)
% 12/1-03,MK

s=j*wv;
y=par(1)./(1+par(2)*s);    y=y*diag(av);
a=real(y);  b=imag(y); 
z=[a(:)' b(:)']';

