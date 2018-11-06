function ee=enoise(evar,ny,Cy,tau,h)
% function ee=enoise(evar,ny,Cy,tau,h) 
% creates normally distributed white noise with variance evar
% and ny elements in Cy coloums.
% With input arguments tau and h it is filtered through 
% Zo=(1/(1+s*tau)).
%
% 6/9-94,MK

if nargin==2,  Cy=1;   end
ee=evar*randn(ny,Cy);  

if nargin>3  &  Cy==1
  ee=filter(1-exp(-h/tau),[1 -exp(-h/tau)],ee);      
end


