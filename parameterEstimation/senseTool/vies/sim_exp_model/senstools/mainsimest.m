% mainsimest simulates a system 'process1' with noise and input 'inputt'
% estimates the parameters pare using model structure si'process'.
% The sensitivity measures and the parameter deviations are calculated.
% Repeated nii times.
%
% Must be specified: see minp and default values below.
%
% Subprograms used:
% si'process' (eg. siktau or sidcmotm), 'input' (eg.inputsq or inpsqramp),
%  enoise, gausnewt, psinf, sens and sensplot.
%
% 20/9-94, 12/2-03,MK


% Default values:
if ~exist('process'),  process='ktau';      end
if ~exist('process1')    process1=process;     end 
if exist(['pe',process,'.mat'])==2  &  ~exist('par')
                        load(['pe',process]),  end
if ~exist('inputt'),    inputt='inputsq';     end
if ~exist('par'),       par=[1 2];            end
if ~exist('par1'),      par1=par;             end
if ~exist('h'),         h=par(2)/20;          end 
if ~exist('nu'),        nu=1000;              end
if ~exist('ploty'),     ploty=2;              end
if ~exist('f1'),        f1=0.05;              end
if ~exist('am'),        am=1;                 end
if ~exist('par0'),      par0=1.5*par;         end
if ~exist('evar'),      evar=0.04;            end
if ~exist('nii')        nii=1;                end
simmod=['si',process];        % model
simmod1=['si',process1];      % system

[u,t]=feval(inputt,f1,am,nu,h); 
y=feval(simmod1,u,t,par1);  [Ry,Cy]=size(y);

for ii=1:nii
ii
ee=evar*enoise(evar,nu,Cy); 
for jj=1:Cy, NM(jj,jj)=norm(y(:,jj));  end  
ee=ee*NM;   ye=y+ee;     
if ploty>0,  plot(t,ye/NM), ylabel('ye'), xlabel('time'),pause(4),  end
[pare,errn,Hr]=gausnewt(simmod,par0,u,ye,t);
[Smin,Simin,R,Ri]=sens(Hr);
errv(ii)=errn;,  parev(ii,:)=pare';
dparrv(ii,:)=abs(pare'-par)./par*100;
dparrev(ii,:)=errn./Simin'/sqrt(nu);
end

if ii>1
mdparr=mean(dparrv);
mdparre=mean(dparrev);
end




