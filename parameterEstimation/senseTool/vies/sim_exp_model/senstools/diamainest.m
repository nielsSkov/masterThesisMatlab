% diamainest.m makes a diary, diamest for a mest run.
% 12/9-94, 11/2-03,MK

delete diamest
diary diamest

format compact
cl=fix(clock); disp([date,', ' ,int2str(cl(4)),'.',int2str(cl(5))])
process
if exist('no'),  no,   end
if  max(pare)/min(pare)>10,  format short e,  pare=pare(:)',  
format  short,  else  pare=pare(:)',                end
errn
dpar=dpar(:)',     sigpar=sigpar(:)'
Smin, Simin=Simin(:)' , R, Ri=Ri(:)'
format

diary






