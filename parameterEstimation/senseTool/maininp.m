% maininp is the main program for design of optimal input in the time domain.
% The system is simulated with different inputs u described by one input
% parameter (eg. fundamental frequency or amplitude of a square wave), 
% the sensitivity measures are calculated and plotted versus the input parameter
% and the input  parameter value minimizing R is determined.
%
% Must be specified (e.g. by progprog'process' or from progdata'process'.mat):
% Process name, process=' '
% Input signal type, inputt=' ' 
% Parameter vector, par=[ ]
% Time step, h=   . Input sequence length,  nu=
% Plot of output y(t), yplot=      (>0 => plot)
% Input frequency vector, f1v=[ ] and amplitude amv=   ... or ...
% Input frequency, f1v=  and amplitude vector, amv=[ ]
% Weigh matrix for multiple outputs, W=[]
% 
% Subprograms used:
% sim'process' (eg. simktau or simdcmotm), 'input' (eg.inputsq or inpsqramp),
%  psinf, sens and sensplot.
%
% 15/1-03,MK

  

% Default values:
if ~exist('process'),    process='ktau';                                        end
if exist(['progdatainp',process,'.mat'])==2  &  ~exist('par'),    load(['progdatainp',process]),  end  
% else  disp(['data: progdatainp',process,'.mat  missing !']),   break,         end
if ~exist('inputt'),    inputt='inpsqw';                                       end
if ~exist('par'),       par=[1 2];                                              end
if ~exist('h'),         h=par(2)/20;                                            end 
if ~exist('nu'),        nu=1000;                                                end
if ~exist('ploty'),     ploty=2;                                                end
if ~exist('f1v'),       f1v=[1 2 3 5 7 10 20]/par(2)/50;                        end
if ~exist('amv'),       amv=1;                                                  end
if ~exist('W'),         W=diag(ones(length(par)));                              end
simmod=['sim',process];


% Sensitivity measures:
j=1;  lenf=length(f1v); 
if lenf>1, xvector=f1v; f1=f1v;  am=amv*ones(size(f1v));
   else    xvector=amv; am=amv;  f1=f1v*ones(size(amv));
end
for j=1:length(xvector) 
  disp(['j = ',int2str(j)]) 
  [u,t]=feval(inputt,f1(j),am(j),nu,h);
  if ploty>0, 
     y=feval(simmod,u,t,par); subplot, plot(t,y), figure(1) 
     title(['Model output nr  ',int2str(j)]),pause(2)
  end
  [psi,Hrn]=psinf(u,t,par,simmod);
  [Smin(j),Simin(:,j),R(j),Ri(:,j),D(j)]=sens(Hrn,W);
end

% Optimal frequency or amplitude:
jmin=find(R==min(R));
if lenf>1 f1opt=f1v(jmin), else amopt=amv(jmin), end
disp(['Opt. values: Smin = ',num2str(Smin(jmin)),'  R = ',num2str(R(jmin))])

% Plotning of sensitivity measures:
if lenf>1,   xlab='input frequency';
   else,     xlab='input amplitude';
end
sensplot, pause(4)

[u,t]=feval(inputt,f1(jmin),am(jmin),nu,h);
if ploty>1 
   y=feval(simmod,u,t,par); [Ry,Cy]=size(y);
   figure(2); clf,   % subplot(221),
   for ii=1:Cy, NM(ii,ii)=1/norm(y(:,ii));      end, yn=y*NM;
   if Cy>1,  plot(t,yn),  else plot(t,y),       end 
   set(gca,'fontname','times'); set(gca,'fontsize',16)
   xlabel('time'), title('Optimal output')
   if Cy>1, ylabel('ymn'), else  ylabel('ym'),  end 
   end


 




