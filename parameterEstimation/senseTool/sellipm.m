% Plot sensitivity ellipsoid for arbitrary number of parameters
% Run as script, requires that Hrn is defined
% 4/4-08, K

if ~exist('Hrn'), disp('Hrn must exist !'), break,   end
   oldHrn=Hrn;

npar=length(Hrn);
maxxy=sqrt(max(diag(inv(Hrn))))*1.1;

clf
for xc=1:npar
 for yc=(xc+1):npar
  Hrn=oldHrn([xc yc],[xc yc]);
  subplot(npar-1,npar-1,yc+(npar-1)*(xc-1)-1)
  sellip
  axis([-maxxy maxxy -maxxy maxxy]);
  xlab=sprintf('\\theta_%d',xc);
  ylab=sprintf('\\theta_%d',yc);
  xlabel(xlab)
  ylabel(ylab)
 end
end


Hrn=oldHrn; %restore Hrn
