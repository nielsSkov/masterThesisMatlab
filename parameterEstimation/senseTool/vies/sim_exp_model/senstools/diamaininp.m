% diamaininp.m makes a diary, diaminp for a minp run.
% 2/9-94, 11/203,MK

delete diaminp
diary diaminp

format compact
cl=fix(clock); disp([date,', ' ,int2str(cl(4)),'.',int2str(cl(5))])
process
inputt
par
h
f1v
amv
if lenf>1  f1opt, else amopt, end
Rmin=R(jmin)
if sum(W)~=length(W), W,  end
format

diary






