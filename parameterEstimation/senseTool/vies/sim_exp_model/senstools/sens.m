function  [Smin,Simin,R,Ri,D] = sens(Hrn,W)
% [Smin,Simin,R,Ri,D] = sens(Hrn) calculates the sensitivity measures for Hrn,
% the relative, normed Hessian:
% Smin - min sens in any direction
% Simin - min sens of thi
% R (Smax/Smin) - ratio of major half axis to minor
% Ri=Si/Simin - ratio of sens of thi alone and min sens of thi
% D= det(Hrn) - ~ the elepsoid volume
% W=[1 k1..kn] is a vector, weighting the sensitivity of the i'th
% parameter with a factor ki. 
%  30/8-94,MK. 26/11-02,MK  

if nargin==2, W=diag(W); Hrn=W*Hrn*W;  end
[xe,de]=eig(Hrn);  lam=diag(de)';  
Smin=sqrt(min(lam));
Simin=sqrt(diag(inv(Hrn)).^(-1));
R=sqrt(max(lam)/min(lam));
Ri=sqrt(diag(Hrn))./Simin; 
D=det(Hrn);





