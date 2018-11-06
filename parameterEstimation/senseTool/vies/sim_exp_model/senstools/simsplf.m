function y=simsplf(u,t,par) 
% y=simsplf(i,t,par) simulates a linear loudspeaker 
% voltage input and outputs x and i
% Uses closed loop transfer functions and 'filter'
% x/u = Bl/R/(m*s^2+(Bl^2/R+r)*s+k)       
% I/u = (m*s^2+r*s+k)/R/(m*s^2+(Bl^2/R+r)*s+k)    
% par=[m r k R Bl],        (length 5)
% 14/1-03,MK

h=t(2)-t(1); ns=length(u);  
m=par(1); r=par(2); k=par(3); R=par(4); Bl=par(5);

% Closed-loop transfer functions from u to x and i:
nx = Bl/R;  dx = [m (Bl^2/R+r) k];
ni = [m r k]/R;   di = dx;

% Discretization:
sysxc=tf(nx,dx); sysxd=c2d(sysxc,h); [nxd,dxd] = tfdata(sysxd);
sysic=tf(ni,di); sysid=c2d(sysic,h); [nid,did] = tfdata(sysid);

x = filter(nxd{1},dxd{1},u);    % Notice {} to obtain cell content
i = filter(nid{1},did{1},u);

y = [x(:), i(:)]; 


 


