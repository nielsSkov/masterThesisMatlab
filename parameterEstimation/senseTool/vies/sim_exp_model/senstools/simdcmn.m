function  [y] = sidcmn(um,t,par)
% [i,w] = sidcmn(um,t,par) (~ simott) simules the total nonlinear model
% of a dc-motot. um is the input voltage, i is current, w is velocity,  
% t is the time vector, and par = [G0  G1  U1  Km  J  B0  T0].
% 21/4-94, JGJ+MK. Opdateret til Matlab 5, 1/3-2002,MK

% Motor parameters:
G0 = par(1);   G1 = par(2);   U1 = par(3);   
Km = par(4);   J = par(5);    B0 = par(6);     T0 = par(7);

h = t(2) - t(1);                          % Time step

nn = length(um);
i = zeros(nn,1);
ws = zeros(nn,1);
 
% Discretisation of linear dynamic part of mechanical system,
% wdot=-B/J*w+1/J*Ti, using first order hold transformation: 

%% [a,b,c,d] = c2dm(-B0/J,1/J,1,0,h,'foh');    
syscss=ss(-B0/J,1/J,1,0);
% syscss=ss(-2,3,4,0)
sysdss = c2d(syscss,h);
[a,b,c,d] = ssdata(sysdss);

w=0; x=0;

for jj = 1:nn

   e = um(jj) - w*Km;

   % Nonlinear armature characteristics: 
   i(jj) = G0*e + (abs(e)>U1)*(e - U1*sign(e))*(G1-G0);
   
   Tm =  i(jj)*Km;                         % Applied torque  
 
   % Nonlinear friction:
   Ti = Tm - T0*sign(w);                   % Correct if motor is moving
   wny = c*x + d*Ti;                       % Simulation of lin dyn part
   x = a*x + b*Ti;
      if (sign(wny)~=sign(w))              % If these conditions are fulfilled 
          if (abs(Tm)<=T0)                 % the motor remains stopped
               wny = 0;   x = 0;
          end
      end
   w = wny;

   wv(jj) = w; 

end

y=[i(:),wv(:)];




