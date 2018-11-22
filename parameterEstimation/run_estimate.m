clear all; close all; clc                                                  %#ok<CLALL>

cd ~/syncDrive/uni/thesis/matlab/parameterEstimation;

%add path to pendulum simulation and relevant data
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/senseTool')
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest1')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest2')

%%------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

itrAll = 26;

%initializing vectors for storring results
b_ccp_vec = zeros(68,itrAll);
b_ccm_vec = zeros(68,itrAll);
%b_cv_vec  = zeros(68,itrAll);
%M_vec     = zeros(68,itrAll);
errn_vec  = zeros(68,itrAll);

%-----initial guesses for first run---------
% b_c_c_p = 1.52;
% b_c_c_m = 5.18;
% b_c_v   = 9;
% M       = 5.8;

% b_c_c_p =  2.07;
% b_c_c_m =  5.6;
% b_c_v   = 10.62;
% 
M       =  6.28;

%load old estimates for initial guesses
loadTmp = load('estFrictionsAndErrnAllFit.mat');

b_ccp_vec_old = vertcat(loadTmp.b_ccp_vec);
b_ccm_vec_old = vertcat(loadTmp.b_ccm_vec);

b_cv_vec_old  = vertcat(loadTmp.b_cv_vec);
%errn_vec_old = vertcat(loadTmp.errn_vec);


%manual finetuning based on estFrictionsAndErrn.mat
% b_ccm_vec_old(7-4)  = b_ccm_vec_old(7-4) -.02;
% b_ccm_vec_old(11-4) = b_ccm_vec_old(11-4)-.01;
% b_ccm_vec_old(13-4) = b_ccm_vec_old(13-4)-.04;
% b_ccm_vec_old(16-4) = b_ccm_vec_old(16-4)-.06;
% b_ccm_vec_old(15-4) = b_ccm_vec_old(15-4)-.08;
% b_ccm_vec_old(17-4) = b_ccm_vec_old(17-4)-.20;
% b_ccm_vec_old(18-4) = b_ccm_vec_old(18-4)-.24;
% b_ccm_vec_old(25-4) = b_ccm_vec_old(25-4)+.04;
% b_ccm_vec_old(26-4) = b_ccm_vec_old(26-4)+.06;
% b_ccm_vec_old(22-4) = b_ccm_vec_old(22-4)+.04;
% 
% b_ccm_vec_old(21-4) = b_ccm_vec_old(21-4)+.02;
% b_ccm_vec_old(27-4) = b_ccm_vec_old(27-4)+.04;
% b_ccm_vec_old(30-4) = b_ccm_vec_old(30-4)-.08;
% b_ccm_vec_old(31-4) = b_ccm_vec_old(31-4)-.03;
% b_ccm_vec_old(33-4) = b_ccm_vec_old(33-4)-.02;
% b_ccm_vec_old(34-4) = b_ccm_vec_old(34-4)-.39;
% b_ccm_vec_old(36-4) = b_ccm_vec_old(36-4)-.16;
% b_ccm_vec_old(37-4) = b_ccm_vec_old(37-4)+.04;
% b_ccm_vec_old(39-4) = b_ccm_vec_old(39-4)-.36;
% b_ccm_vec_old(40-4) = b_ccm_vec_old(40-4)-.12;
% 
% b_ccm_vec_old(41-4) = b_ccm_vec_old(41-4)-.05;
% b_ccm_vec_old(42-4) = b_ccm_vec_old(42-4)-.245;
% b_ccm_vec_old(44-4) = b_ccm_vec_old(44-4)-.08;
% b_ccm_vec_old(46-4) = b_ccm_vec_old(46-4)+.50;
% b_ccm_vec_old(48-4) = b_ccm_vec_old(48-4)+.50;
% b_ccm_vec_old(49-4) = b_ccm_vec_old(49-4)+.50;
% b_ccm_vec_old(50-4) = b_ccm_vec_old(50-4)+.20;
% b_ccm_vec_old(51-4) = b_ccm_vec_old(51-4)+.20;
% b_ccm_vec_old(53-4) = b_ccm_vec_old(53-4)-.04;
% 
% b_ccm_vec_old(56-4) = b_ccm_vec_old(56-4)-.38;
% b_ccm_vec_old(60-4) = b_ccm_vec_old(60-4)+.40;
% b_ccm_vec_old(62-4) = b_ccm_vec_old(62-4)+.28;
% b_ccm_vec_old(63-4) = b_ccm_vec_old(63-4)+.02;
% b_ccm_vec_old(64-4) = b_ccm_vec_old(64-4)+.03;
% b_ccm_vec_old(65-4) = b_ccm_vec_old(65-4)+.40;
% b_ccm_vec_old(66-4) = b_ccm_vec_old(66-4)+.02;
% b_ccm_vec_old(69-4) = b_ccm_vec_old(69-4)-.10;
% 
% b_ccm_vec_old(70-4) = b_ccm_vec_old(70-4)+.20;
% b_ccm_vec_old(71-4) = b_ccm_vec_old(71-4)+.10;
% b_ccm_vec_old(72-4) = b_ccm_vec_old(72-4)+.01;


%if 0 -> manual tuning,  if 1 senseTool estimation
sense = 1;
for j = itrAll:-1:1
close all

currentRow = 0;
for i = 5:72

%-----initial guesses is set to result of last estimate---------
% if i > 5
%   b_c_c_p = pare(1);
%   b_c_c_m = pare(2);
%   b_c_v   = pare(3);
% end

if j == itrAll
  b_c_c_p = b_ccp_vec_old(i-4);
  b_c_c_m = b_ccm_vec_old(i-4);
  %b_c_v   = b_cv_vec_old(i-4);
else
  b_c_c_p = b_ccp_vec(i-4,j+1);
  b_c_c_m = b_ccm_vec(i-4,j+1);
end
b_c_v   = mean(b_cv_vec_old);

%this: %02i means two digit integer with leading zeros
dataFile = sprintf('0m%02i.csv', i);

data = csvread( dataFile, 0, 0);

%for cropping test data
dataStart = 1760              -66*(itrAll-j);
dataEnd   = length(data)-190  -66*(itrAll-j);

%choose initial condition in data at high velocity (ca 0.2 m s^-1)
while data(dataStart,4) < 0.2
  dataStart = dataStart+1;
end

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%setting input to zero
u = data(dataStart:dataEnd,2);

%output vector
y = data(dataStart:dataEnd,3);      %position of cart

%velocity
y_dot = data(dataStart:dataEnd,4);  %velocity of cart (not used)

%input
uin = [ t u ];

par0 = [ b_c_c_p b_c_c_m ]% b_c_v ];%M ]  %set initial parameters for simulation

%initial value from start of data
x_0     = y(1);
x_dot_0 = y_dot(1);

%%-------- USING simTestName FUNCTION TO SIMULATE THE SYSTEM -------------

%simulation of initial parameters
Ynew = sim_cartPendulum( u, t, par0 );

%close all; plot(t,y); hold on; plot(t,Ynew)


%%------------- USING sensetool FOR PARAMETER ESTIMATION -----------------

if sense

  %making sure u and y is a column vector
  u = u(:);
  y = y(:);

  process='_cartPendulum';

  save meas_cartPendulum t u y %creating meas'TestName'

  subplot(14,5,i-4)

  subTitle=sprintf('x = 0m%02i', i);
  title(subTitle)
  set(gca,'FontSize',7.5)


  %subfigure offset and scale parameters
  x_offset = -.12;
  y_offset =  .055;
  x_scale  =  .05;
  y_scale  =  .00;

  %zero-indexed row/colon of figures
  currentCol = mod((i-5),5);
  if i == 5
    currentRow = 0;
  elseif currentCol == 0
    currentRow = currentRow +1;
  end

  %calculate offset and specify scale for each subplot
  scaleAndPos = [ x_offset+(x_scale-.015)*currentCol ...
                  y_offset-(y_scale+.005)*currentRow  ...
                  x_scale  y_scale                   ];

  %get current position
  pos = get(gca, 'Position');

  %modify position vector
  pos = pos+scaleAndPos;

  %set new position and scale
  set(gca, 'Position', pos)

  drawnow

  %figure;
  run mainest.m
  
  set(gca,'FontSize',7.5)
  title(subTitle)
  axis off, axis tight
  drawnow

  %storring result for each iteration
  b_ccp_vec(i-4,j) = pare(1);
  b_ccm_vec(i-4,j) = pare(2);
  %b_cv_vec(i-4,j)  = pare(3);
  %M_vec(i-4,j)     = pare(4);
  errn_vec(i-4,j)  = errn;

  %print progress
  printItr = sprintf('Iteration %i done, %i to go',i-4, 72-i);
  disp(printItr)
else
   subplot(14,5,i-4), plot(t,y); hold on; plot(t,Ynew)

  subTitle=sprintf('x = 0m%02i', i);
  title(subTitle)
  set(gca,'FontSize',7.5)

  %subfigure offset and scale parameters
  x_offset = -.12;
  y_offset =  .055;
  x_scale  =  .05;
  y_scale  =  .00;

  %zero-indexed row/colon of figures
  currentCol = mod((i-5),5)
  if i == 5
    currentRow = 0;
  elseif currentCol == 0
    currentRow = currentRow +1
  end

  %calculate offset and specify scale for each subplot
  scaleAndPos = [ x_offset+(x_scale-.015)*currentCol ...
                  y_offset-(y_scale+.005)*currentRow  ...
                  x_scale  y_scale                   ];

  %get current position
  pos = get(gca, 'Position');

  %modify position vector
  pos = pos+scaleAndPos;

  %set new position and scale
  set(gca, 'Position', pos)
  
  title(subTitle)
  axis off, axis tight
  drawnow
end

end
  
  %print progress
  printItr = sprintf('Outher iteration %i done, %i to go',itrAll+1-j, j-1);
  disp(printItr)

end

<<<<<<< HEAD





% %close all
% x_cart = ( 5:1:72 )';
% 
% figure
% scatter(x_cart, b_ccm_vec, 100, '.')
% hold on
% scatter(x_cart, b_ccp_vec, 100, '.')
% %plot(x_cart, b_cv_vec)
% %plot(x_cart, errn_vec)
% 
% grid on, grid minor
% xlabel('x [m]')
% ylabel('coloumb friction')
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccm_vec-b_ccm_vec(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccm_vec(1);
% plot(x+5,y)
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccp_vec-b_ccp_vec(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccp_vec(1);
% plot(x+5,y)








% %close all
% x_cart = ( 5:1:72 )';
% 
% figure
% scatter(x_cart, b_ccm_vec_old, 100, '.')
% hold on
% scatter(x_cart, b_ccp_vec_old, 100, '.')
% %plot(x_cart, b_cv_vec_old)
% %plot(x_cart, errn_vec_old)
% 
% grid on, grid minor
% xlabel('x [m]')
% ylabel('coloumb friction')
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccm_vec_old-b_ccm_vec_old(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccm_vec_old(1);
% plot(x+5,y)
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-b_ccp_vec_old(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccp_vec_old(1);
% plot(x+5,y)




% xStart = 5;
% xEnd   = 18;
% x = ( xStart:.1:xEnd )' -xStart;
% p = polyfit(x_cart(xStart-4:xEnd)-xStart, b_ccm_vec_old(xStart-4:xEnd)-b_ccm_vec_old(xStart-4),3)
% y =  p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4) + b_ccm_vec_old(xStart-4);
% plot(x+xStart,y)
% 
% xStart = 18;
% xEnd   = 27;
% x = ( xStart:.1:xEnd )' -xStart;
% p = polyfit(x_cart(xStart-4:xEnd)-xStart, b_ccm_vec_old(xStart-4:xEnd)-b_ccm_vec_old(xStart-4),3)
% y =  p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4) + b_ccm_vec_old(xStart-4);
% plot(x+xStart,y)

%10DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-2.07,10)
% 
% x = ( 5:.1:72 )' -5;
% y = p(1)*x.^10 + p(2)*x.^9 + p(3)*x.^8 + p(4)*x.^7 + p(5)*x.^6 +...
%     p(6)*x.^5 + p(7)*x.^4 + p(8)*x.^3 + p(9)*x.^2 + p(10)*x + p(11) + 2.07;
% plot(x+5,y)


%13DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-2.07,13)
% 
% x = ( 5:.1:72 )' -5;
% y = p(1)*x.^13 + p(2)*x.^12 + p(3)*x.^11 + p(4)*x.^10 + p(5)*x.^9 + p(6)*x.^8 + p(7)*x.^7 + p(8)*x.^6 +...
%     p(9)*x.^5 + p(10)*x.^4 + p(11)*x.^3 + p(12)*x.^2 + p(13)*x + p(14) + 2.07;
% plot(x+5,y)


%15DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-2.07,15)
% 
% x = ( 5:.1:72 )' -5;
% y = p(1)*x.^15 + p(2)*x.^14 + p(3)*x.^13 + p(4)*x.^12 + p(5)*x.^11 + p(6)*x.^10 + p(7)*x.^9 + p(8)*x.^8 + p(9)*x.^7 + p(10)*x.^6 +...
%     p(11)*x.^5 + p(12)*x.^4 + p(13)*x.^3 + p(14)*x.^2 + p(15)*x + p(16) + 2.07;


% if sense
%   save estFrictionsAndErrnAllFit2 b_ccp_vec b_ccm_vec b_cv_vec errn_vec
% end
=======
>>>>>>> 8d5ece76bf74097d71416d15472bff273110fe25





%---------results of many test---------------------------------------------

loadTmpMany = load('estFrictionsAndErrnAllFit_many.mat');

b_ccp_many = vertcat(loadTmpMany.b_ccp_vec);
b_ccm_many = vertcat(loadTmpMany.b_ccm_vec);
figure
plot(b_ccp_many)
hold on
plot(b_ccm_many)
plot(mean(b_ccm_many,2), 'lineWidth', 1.2)
plot(mean(b_ccp_many,2), 'lineWidth', 1.2)
grid on, grid minor

errn_many = vertcat(loadTmpMany.errn_vec);
figure
plot(errn_many)
hold on
plot(mean(errn_many,2), 'lineWidth', 1.2)
grid on, grid minor























% %close all
% x_cart = ( 5:1:72 )';
% 
% figure
% scatter(x_cart, b_ccm_vec, 100, '.')
% hold on
% scatter(x_cart, b_ccp_vec, 100, '.')
% %plot(x_cart, b_cv_vec)
% %plot(x_cart, errn_vec)
% 
% grid on, grid minor
% xlabel('x [m]')
% ylabel('coloumb friction')
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccm_vec-b_ccm_vec(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccm_vec(1);
% plot(x+5,y)
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccp_vec-b_ccp_vec(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccp_vec(1);
% plot(x+5,y)








% %close all
% x_cart = ( 5:1:72 )';
% 
% figure
% scatter(x_cart, b_ccm_vec_old, 100, '.')
% hold on
% scatter(x_cart, b_ccp_vec_old, 100, '.')
% %plot(x_cart, b_cv_vec_old)
% %plot(x_cart, errn_vec_old)
% 
% grid on, grid minor
% xlabel('x [m]')
% ylabel('coloumb friction')
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccm_vec_old-b_ccm_vec_old(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccm_vec_old(1);
% plot(x+5,y)
% 
% %11DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-b_ccp_vec_old(1),11)
% 
% x = ( 5:1:72 )' -5;
% y = p(1)*x.^11 + p(2)*x.^10 + p(3)*x.^9 + p(4)*x.^8 + p(5)*x.^7 + p(6)*x.^6 +...
%     p(7)*x.^5 + p(8)*x.^4 + p(9)*x.^3 + p(10)*x.^2 + p(11)*x + p(12) + b_ccp_vec_old(1);
% plot(x+5,y)




% xStart = 5;
% xEnd   = 18;
% x = ( xStart:.1:xEnd )' -xStart;
% p = polyfit(x_cart(xStart-4:xEnd)-xStart, b_ccm_vec_old(xStart-4:xEnd)-b_ccm_vec_old(xStart-4),3)
% y =  p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4) + b_ccm_vec_old(xStart-4);
% plot(x+xStart,y)
% 
% xStart = 18;
% xEnd   = 27;
% x = ( xStart:.1:xEnd )' -xStart;
% p = polyfit(x_cart(xStart-4:xEnd)-xStart, b_ccm_vec_old(xStart-4:xEnd)-b_ccm_vec_old(xStart-4),3)
% y =  p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4) + b_ccm_vec_old(xStart-4);
% plot(x+xStart,y)

%10DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-2.07,10)
% 
% x = ( 5:.1:72 )' -5;
% y = p(1)*x.^10 + p(2)*x.^9 + p(3)*x.^8 + p(4)*x.^7 + p(5)*x.^6 +...
%     p(6)*x.^5 + p(7)*x.^4 + p(8)*x.^3 + p(9)*x.^2 + p(10)*x + p(11) + 2.07;
% plot(x+5,y)


%13DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-2.07,13)
% 
% x = ( 5:.1:72 )' -5;
% y = p(1)*x.^13 + p(2)*x.^12 + p(3)*x.^11 + p(4)*x.^10 + p(5)*x.^9 + p(6)*x.^8 + p(7)*x.^7 + p(8)*x.^6 +...
%     p(9)*x.^5 + p(10)*x.^4 + p(11)*x.^3 + p(12)*x.^2 + p(13)*x + p(14) + 2.07;
% plot(x+5,y)


%15DEG
% p = polyfit(x_cart-5, b_ccp_vec_old-2.07,15)
% 
% x = ( 5:.1:72 )' -5;
% y = p(1)*x.^15 + p(2)*x.^14 + p(3)*x.^13 + p(4)*x.^12 + p(5)*x.^11 + p(6)*x.^10 + p(7)*x.^9 + p(8)*x.^8 + p(9)*x.^7 + p(10)*x.^6 +...
%     p(11)*x.^5 + p(12)*x.^4 + p(13)*x.^3 + p(14)*x.^2 + p(15)*x + p(16) + 2.07;


% if sense
%   save estFrictionsAndErrnAllFit2 b_ccp_vec b_ccm_vec b_cv_vec errn_vec
% end

