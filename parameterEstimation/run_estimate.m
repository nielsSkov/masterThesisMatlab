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
M     = 6.28;
%b_c_v = 10.414;

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






%---------results of many test---------------------------------------------


loadTmpMany = load('estFrictionsAndErrnAllFit_many.mat');

b_ccp_many = vertcat(loadTmpMany.b_ccp_vec);
b_ccm_many = vertcat(loadTmpMany.b_ccm_vec);
errn_many  = vertcat(loadTmpMany.errn_vec);

figure
plot(b_ccp_many)
hold on
plot(b_ccm_many)

figure
plot(mean(b_ccm_many,2), 'lineWidth', 1.2)
hold on
plot(mean(b_ccp_many,2), 'lineWidth', 1.2)



b_ccm_weighed_mean = zeros(length(b_ccm_many),1);
b_ccp_weighed_mean = zeros(length(b_ccp_many),1);

normalizedErrn = zeros(size(errn_many));
for i = 1:length(errn_many(:,1))
  normalizedErrn(i,:) = errn_many(i,:)./sum( errn_many(i,:) );
end

for i = 1:length(b_ccm_many(:,1))
  b_ccm_weighed_mean(i) = sum( normalizedErrn(i,:).*b_ccm_many(i,:) );
  b_ccp_weighed_mean(i) = sum( normalizedErrn(i,:).*b_ccp_many(i,:) );
end


plot(b_ccm_weighed_mean, 'lineWidth', 1.2)
plot(b_ccp_weighed_mean, 'lineWidth', 1.2)
grid on, grid minor


figure
plot(errn_many)
grid on, grid minor

%final lookup vectors

%position
pos = [ 0.05, 0.06, 0.07, 0.08, 0.09, 0.10, 0.11, 0.12, 0.13, 0.14, ...
        0.15, 0.16, 0.17, 0.18, 0.19, 0.20, 0.21, 0.22, 0.23, 0.24, ...
        0.25, 0.26, 0.27, 0.28, 0.29, 0.30, 0.31, 0.32, 0.33, 0.34, ...
        0.35, 0.36, 0.37, 0.38, 0.39, 0.40, 0.41, 0.42, 0.43, 0.44, ...
        0.45, 0.46, 0.47, 0.48, 0.49, 0.50, 0.51, 0.52, 0.53, 0.54, ...
        0.55, 0.56, 0.57, 0.58, 0.59, 0.60, 0.61, 0.62, 0.63, 0.64, ...
        0.65, 0.66, 0.67, 0.68, 0.69, 0.70, 0.71, 0.72 ]

%negative b_cc
bm = [ 5.6263, 5.6912, 5.0210, 4.7789, 4.5369, 4.5226, 4.3667, 3.6637, ...
       3.3560, 3.3377, 2.9555, 2.8196, 2.6894, 2.6508, 2.7522, 2.7978, ...
       3.1890, 2.9839, 3.2756, 3.5558, 3.5269, 4.3655, 4.5228, 4.4821, ...
       4.2200, 4.0933, 3.4397, 3.3830, 3.0173, 3.0530, 2.8399, 2.5662, ...
       2.3793, 2.6272, 1.9711, 2.0432, 1.8917, 1.6675, 1.9137, 1.8585, ...
       1.9262, 2.4228, 2.2988, 2.6986, 2.7103, 2.9014, 2.9634, 2.7753, ...
       2.7122, 2.4782, 2.5381, 2.0629, 2.1222, 2.3033, 2.3858, 2.7245, ...
       2.2818, 2.5743, 2.4700, 2.5944, 2.8320, 2.8006, 2.7077, 2.7269, ...
       2.5346, 2.8446, 2.7306, 2.5191 ]

%positive b_cc
bp= [ 2.0599, 2.0059, 2.1820, 2.2164, 2.2342, 2.2546, 2.2178, 2.2195, ...
      2.4184, 2.4506, 2.7560, 2.8778, 2.8485, 2.8498, 3.0238, 3.2066, ...
      3.1093, 3.1399, 2.8875, 2.7890, 2.6054, 1.9920, 1.9811, 1.9713, ...
      1.9721, 1.9877, 2.1605, 2.2211, 2.2249, 2.1049, 2.3816, 2.4523, ...
      2.6783, 2.4560, 2.9049, 2.9076, 3.1950, 3.2866, 3.1905, 3.2095, ...
      3.2441, 3.1898, 2.6971, 2.8141, 2.4427, 2.2702, 2.1833, 2.2546, ...
      2.2863, 2.6159, 2.5990, 2.6953, 2.8589, 3.3110, 3.2057, 3.5125, ...
      3.2856, 3.3000, 2.9808, 2.9562, 3.0018, 2.7540, 2.7749, 2.7897, ...
      3.0878, 2.8514, 2.9757, 3.0784 ]

%estimated using
M     =  6.280;
b_c_v = 10.414;

%test to see they match ( if ans = 0 then good! )
round(b_ccm_weighed_mean-bm',4)
round(b_ccp_weighed_mean-bp',4)


