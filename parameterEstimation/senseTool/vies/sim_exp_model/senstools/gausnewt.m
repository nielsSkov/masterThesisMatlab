function  [par, errn,Hrn] = gausnewt(simmod,par0,u,y,t,plottype,weight)
%   [par,errn,Hrn] = gausnewt(simmod,par0,u,y,t)  determines the physical
%  parameters  par  in a simulation model  simmod.m  using a
%  Gauss Newton algorithme. Relative gradients are used  and, for multiple
%  output (MO)  systems, a normed model output.
%  The relative model gradient ,psir is determined by psinf.m.
%
%  The function is called with:  measured input u = [u1(t)  u2(t) ...] ,
%  measured output  y = [y1(t)  y2(t) ...] , a time vector t,
%  and initial parameter values par0.
%  The system input  u1, u2 ...  and system output  y1, y2 ...  must all
%  be column vectors.
%
%  Results of the algorithm:  estimated parameter vektor par, plot of
%  measured output and model output, normed output error errn, 
%  and a relative, normed Hessian, Hrn.
%
%  [par,errn,Hrn] = gausnewt(simmod,par0,u,y,t,plottype,weight)
%  For multiple system outputs the choice,  plottype = 1 plots all outputs wih
%  same time axis, while  plottype = 2  plots the outputs in succession.
%  Default is plottype = 2.
%  With  weight = [f1  f2 ...]  the individual outputs are weighted.
%  Default is weight = [1 1 ...].  
%
%  20/9-1994 JGJ+MK. 
%  29/1-2001, MK: updated, isempty( ) in line 144 and 145
%  26/11-02, MK: plot text adjusted

par = par0(:);
mumin = 0.01;     upddmin = 0.001;     noomax = 20; 

N = length(t);    [Ry,Cy] = size(y);   [Ru,Cu] = size(u);    NM = N*Cy;

if N~=Ry
   error('The individual outputs in y must be columns of same length as t')
end

if N~=Ru
   error('The individual inputs in u must be columns of same length as t')
end

if nargin==5;  plottype = 2;  weight = ones(1,Cy);  end;
if nargin==6;  weight = ones(1,Cy);  end;

for ii=1:Cy
   NORMMATR(ii,ii) = 1/norm(y(:,ii))*weight(ii);
end

yn = y*NORMMATR;  yr = yn(:);   NORMMATR = NORMMATR*sqrt(NM)/norm(yr);
yn = y*NORMMATR;  yr = yn(:);

% Iteration algorithme:
% In an outer loop new relative parameter update directions, updd(parny)
% are calculated from a new relative model gradient psir(parny) - 
% untill norm(updd)<=upddmin.
% In an inner loop the step length mu is reduced, but the direction maintained, 
% untill the new errn  is smaller.
% The iteration is stopped if mu < mumin

ym = feval(simmod,u,t,par);   [Rym,Cym] = size(ym);
if N~=Rym;  error('Wrong dimension of model output');  end;
ymn = ym*NORMMATR;  ymr = ymn(:);  errn = 100*norm(yr-ymr)/sqrt(NM);

if Cy==1
   nn = 1:N;
   plot(nn,y,nn,ym);
   title('System and model output:  Start '),  pause(5)
else
   if plottype == 1
      nn = 1:N;   
      plot(nn,yn,nn,ymn,':');
   else
      nn = 1:NM;
      plot(nn,yr,nn,ymr,':');
   end
   title('Normed system and model output: Start'),  pause(5)
end

mu = 0.125;  noo = 1;
updd = 1;                  %.

% Outer loop:
while norm(updd) > upddmin

  tekst = num2str(noo);
  tekst = [tekst ,'. calculation of psi of max ',num2str(noomax),' times'];
  disp(tekst);    psi = psinf(u,t,par,simmod,NORMMATR);
  psir = psi*diag(par);

  mu = 4*mu;  if mu>1,  mu=1;  end
  updd = psir\(yr-ymr);        % updd = Rr^-1*Gr = [psir'*psir]^-1*[e*psir]
  disp(' ');
  disp('Relative parameter update = ');  disp(updd);
  nyerrn = errn;           % Guarantees at least one  run through inner loop.

     % Inner loop:
     while nyerrn >= errn
       parny = par + par.*mu.*updd;
       ym = feval(simmod,u,t,parny);  ymn = ym*NORMMATR;  ymr = ymn(:);
       nyerrn = 100*norm(yr-ymr)/sqrt(NM);
       mu = mu/2;
       if mu < mumin
         disp('iteration stopped - mu < mumin'), break
       end
     end                      % End of inner loop.

  if mu < mumin,  break, end
  par = parny;   errn = nyerrn;

  % Plotting:
  figure(1)
  if Cy==1
     plot(nn,y,nn,ym);      title('System and model output');
     ylabel('y(k) and ym(k)');
  else
     if plottype == 1
        plot(nn,yn ,nn, ymn,':');  ylabel('yn(k) and ymn(k)');
     else
        plot(nn,yr,nn,ymr,':');    ylabel('yr(k) and ymr(k)');
     end
     title('Normed system and model output')
  end

  xlabel('Sampling number');  

  ny = round(log10(abs(errn)));                     % Rounding errn
  aerrn = round(errn*10^(2-ny))/10^(2-ny);   %     -      -   -

  L = axis;    axis('auto');  
  xpkt = 0.14*(L(2) - L(1)) + L(1);
  ypkt = 0.90*(L(4) - L(3)) + L(3); 
  text(xpkt,ypkt,['errn = ',num2str(aerrn),' %']);  pause(2)

  disp(['Percentage errn = ',num2str(errn)]);
  disp(' '); 
  disp('* - * - * - * - * - * - * - *');


  noo = noo+1;  if noo > noomax,  break,  end
end                                                         % End of outer loop.

% print gausnewt                                       % Last plot saved

Hrn = psir'*psir/Ry/Cy;

if isempty(errn);  errn=100;  end; 
if isempty(Hrn);  Hrn = zeros(length(par0),length(par0));  end;
