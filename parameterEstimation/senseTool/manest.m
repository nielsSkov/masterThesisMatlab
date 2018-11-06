%  manest: The parameters k and tau of the model k/(1+s*tau)
%  are estimated by manual ajustment to best fit between model 
%  output and 'measured' output. 
%  The fit appears from the plot and from calculated RMS error.  
% 'measured' input output data u and y stored in manest.mat.
%  16/2-98, 17/2-03,mk

clc
load measmanest

if ~exist('tt'), tt=1; end,  an='y';
while an=='y'
if tt==1,
  disp('	 _________________________________________')
  disp('	| ') 
  disp('	| Enter values for k and tau, (eg. k=1 and tau =1)') 
  disp('	| for best fit of red output curve to the blue  ')
  disp('	| or minimum RMS error, errn %		 ')
  disp('	|_________________________________________ ')
  disp('                                            ')
  k=input('	k=');  tau=input('	tau='); 
  else disp('	Enter new values for k and tau !'),
  k=input('	k=');  tau=input('	tau='); 
end

[nz,dz]=c2dm(k,[tau 1],t(3)-t(2),'foh');	% Discretization
y1=filter(nz,dz,u);				% Model output

errn=norm(y-y1)/norm(y)*100	  		% Relative RMS error
plot(t,u,'g',t,y,'b',t,y1,'r'), 
grid
title('Input (green), system output (blue) og model output (red)')
xlabel('Time')
disp(' ')
if tt==4 & errn > 8  disp('	You can do much better !'),end
if tt==4 & (errn<8 & errn>4) disp('    OK - but you can do better'),end
if errn<4 & errn>3, disp('   Good - you are getting close to the minimum'),end
if errn<3 & errn>2, disp('    Very good - but you can get below errn = 2'),end
if errn<2  disp('    CONGRATULATION - you made it below errn=2 !!!!'), end
disp(' ')
disp('    Do you want to try again ?')
an=input('    Enter y or n: ','s');

tt=tt+1;
end
clear tt
% Data dannet af:
% t=0.02*[1:200];
% u=[2*ones(size([1:80]) 0.8*ones(size[1:120])];
% y=simktau(u,t,[1.44,0.88]);
