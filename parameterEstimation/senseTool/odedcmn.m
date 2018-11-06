function dw=odedcmn(t,w,iout,par)

tu=par{1};
ut=par{2};
K=par{3};
J=par{4};
B=par{5};
G0=par{6};
G1=par{7};
u1=par{8};
Tc=par{9};

%u=interp1(tu,ut,t);
u=ut(min(find(t<=tu)));

ur=u-K*w;

if abs(ur)>u1,
 i=G0*ur+(G1-G0)*(ur-u1*sign(ur));
else
 i=G0*ur;
end

T=K*i;
Tn=sign(w)*Tc;
Ti=T-Tn;

% J dw/dt=Ti - Bw
dw=(Ti-B*w)/J;

if iout,
  dw=i; %overwrite output
end

%disp([t u w dw i Ti])
