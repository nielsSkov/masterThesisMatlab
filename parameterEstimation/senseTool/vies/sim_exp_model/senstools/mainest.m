% mainest is the main program for parameter estimation 
% From input/output data (u, y and t) stored in meas'process','no'.mat, 
% the parameters pare of 'process' are estimated.
% The sensitivity measures and the parameter deviations are calculated as well.
%
% Must be specified (e.g. by progprog'process'.m, i.e. from
% progdata'process'.mat): see default values below.
% Subprograms used:
% sim'process', gausnewt, psinf, and sens.
%
% 20/9-94,MK. 26/11-02,MK    


% Default values:
if ~exist('process'),    process='ktau';     	end		% Process name           
if ~exist('no'),                    no='';      end		% Measurement number     
if exist(['progdata',process,no,'.mat'])==2  &  ~exist('par0')   
	load(['progdata',process,no]),               end		% progdata loades
if exist(['meas',process,no,'.mat'])==2, load(['meas',process,no]), else
	disp(['data: meas',process,no,'.mat  missing !']),  break,     end  
if ~exist('ploty'),     ploty=2;                                      end
if ~exist('par0'),      par0=[1.5 3];                                 end
simmod=['sim',process];

if ploty>0,  plot(t,y), ylabel('y'), xlabel('time'),
   title('Measured system output'), pause(4),  end

[pare,errn,Hrn]=gausnewt(simmod,par0,u,y,t,ploty);		% Parameter estimation
[Smin,Simin,R,Ri]=sens(Hrn);							% Sensitivity measures
[Ry,Cy]=size(y);
dpar=errn./Simin;
sigpar=dpar/sqrt(Ry*Cy);								% Parameter deviations
pare, errn
