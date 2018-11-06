% sellip plots sensitivity ellipse for given Hrn: 
% xr'*Hrn*xr= 1  
% 30/11-94,MK


if ~exist('Hrn'), disp('Hrn must exist !'), break,   end
[T d]=eig(Hrn);                     
h1=1/sqrt(d(1,1));   h2=1/sqrt(d(2,2));           % semiaxes
v=2*pi*[0:.01:1];    nv=length(v);
xd=h1*cos(v);                                     % diagonal form
yd=h2*sin(v);
x1=T(1,1)*xd+T(1,2)*yd;           
y1=T(2,1)*xd+T(2,2)*yd; 
mi=min(([x1 y1])); ma=max(([x1 y1])); 
plot(x1,y1); axis([mi ma mi ma]);
grid 




 
