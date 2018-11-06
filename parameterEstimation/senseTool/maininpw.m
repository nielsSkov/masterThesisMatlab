% maininpw is the main program for design of optimal multi sine input
% in the frequency domain.
% The system is simulated with different inputs described by the input
% parameters wv (frequencies) and av (amplitudes). 
% The input parameter value minimizing the sensitivity ratio R 
% (or inverse determinant Di) is determined.
%
% Must be specified (e.g. by pe'process' or from pe'process'.mat):
% Process name, process=' ' 
% Parameter vector, par=[ ]
% Input frequency and amplitude (start) vectors wvo and avo.
% 
% Subprograms used:
% siw'process' (eg. siwktau2), ratioxw and psinf.
%
% 14/10-94,MK - 12/2-03,MK

% Default values:
if ~exist('process'),    process='ktau2';              end
if exist(['piw',process,'.mat'])==2  &  ~exist('par'), load(['piw',process]),  end  
if ~exist('par'),       par=[1 2 .2];  end
if ~exist('wvo'),       wvo=[.2  5];    end 
if ~exist('avo'),       avo=[1 1];    end
if ~exist('fre'),       fre=1;         end    % Varying frequencies ?  
if ~exist('am'),        am=0;          end    %     -     amplitudes ?
if ~exist('D'),         De=0;          end    % R or D minimized ?   
simmodw=['siw',process];

wv=wvo; av=avo; n=length(wv);

% The input parameters wv and av are split up into the varying ones, x and
% the constant ones, xc: 
xo=[wv(1:n*fre) av(2:n*am)];   
xc=[wv(1:n*(~fre)) av(1:n*(~am))]; 

% Input parameters minimizing Rw (or Diw):
if De==0 
 xmin= fmins('ratioxw',xo,0,[],xc,fre,am,par,simmodw);
else
 disp('Minimum Di:')
 xmin= fmins('ratioxwD',xo,0,[],xc,fre,am,par,simmodw);   
 end
[Rw, Diw, Hrnw,psiwn]=ratioxw(xmin,xc,fre,am,par,simmodw);
% psiwn=psiwn
xmina=abs(xmin)
[Smin,Simin,R,Ri,D]=sens(Hrnw)

 
x=xmina(:)';   xc=xc(:)';
n=ceil(length([x xc])/2);                     % Number of frequencies
wve=[x(1:n*fre)  xc(1:n*(~fre))]              % Frequency vector
ave=[am(1:am)  xc(1:n*(~am)) x(length(x)-n+2:length(x)*am)]  % Amp vector




