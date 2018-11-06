function  [psi,Hrn] = psinf(u,t,par,simmod,NORMMATR)
%  psi = psinf(u,t,par,simmod,NORMMATR) calculates the model gradient
%  psi = d(ymr)/d(par)  wrt the n parameters in the parameter vector par 
%  using numerical differentation.
%  u is the inputmatrix/vector and t the time vektor.
%  simmod.m is the simulation program calculating the model output ym
%  The output ymn used for calculating psi is normed by NORMMATR=diag(1/yiRMS).
%  If argument NORMMATR is omitted a NORMMATR=diag(1/ymiRMS) is used as default.
%  The relative normed Hessian Hrn is calculated as well.  
%
%  30/8 - 1994 JGJ+MK. 26/11-02,MK

n    = length(par); 
ymn0 = feval(simmod,u,t,par);   [Ry,Cy]=size(ymn0);
if  Cy>Ry,  ymn0=ymn0';         [Ry,Cy]=size(ymn0);                end
if nargin==4
   for i=1:Cy,  NORMMATR(i,i)=sqrt(Ry*Cy)/norm(ymn0(:,i));     end
end
dpar = par*1e-4;                             % 0.01 per cent delta values


ymn0 = ymn0*NORMMATR;     ymn0 = ymn0(:);

for ii=1:n
 % disp(['calculating  dym/dpar(',int2str(ii),') ...'])
  parii = par;
  parii(ii) = par(ii) + dpar(ii);
  ymn = feval(simmod,u,t,parii)*NORMMATR;   
  psi(:,ii) = (ymn(:) - ymn0)/dpar(ii);                 % dymn/dpar(ii)
end

Hn=psi'*psi/Ry/Cy;
L=diag(par);  Hrn=L*Hn*L;
