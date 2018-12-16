clear all; close all; clc                                                  %#ok<CLALL>

cd ~/syncDrive/uni/thesis/matlab/parameterEstimation;

%add path to pendulum simulation and relevant data
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/senseTool')
addpath('~/syncDrive/uni/thesis/matlab/cartPendulum')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest1')
addpath('~/syncDrive/uni/thesis/matlab/parameterEstimation/data/cartTest2')

%%------------ READING DATA FROM FILE AND SETTING PARAMETERS -------------

itrAll = 34;

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
loadTmp = load('estFrictionsAndErrnAllFit2.mat');
%loadTmp = load('estFrictionsAndErrnMany_new.mat');

b_ccp_vec_old = vertcat(loadTmp.b_ccp_vec);
b_ccm_vec_old = vertcat(loadTmp.b_ccm_vec);

%b_cv_vec_old  = vertcat(loadTmp.b_cv_vec);
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

minMax = zeros(68,1);

%if 0 -> manual tuning,  if 1 senseTool estimation
sense = 0;
%switch outher iterations on or off
outherItr = 0;
%plot all or just one
plotAll = 0;

if outherItr == 0
  itrAll = 1;
end
for j = itrAll:-1:1
close all
%figure

currentRow = 0;
for i = 5:72

%-----initial guesses is set to result of last estimate---------
% if i > 5
%   b_c_c_p = pare(1);
%   b_c_c_m = pare(2);
% end

if j == itrAll || outherItr == 0
  b_c_c_p = b_ccp_vec_old(i-4)-.59  +1.019;
  b_c_c_m = b_ccm_vec_old(i-4)-.44  +.8;
else
  b_c_c_p = b_ccp_vec(i-4,j+1);
  b_c_c_m = b_ccm_vec(i-4,j+1);
end
b_c_v   = 0;       %mean(b_cv_vec_old)*0;  %<--viscous set to zero

%this: %02i means two digit integer with leading zeros
dataFile = sprintf('0m%02i.csv', i);

data = csvread( dataFile, 0, 0);

%for cropping test data
if outherItr
  dataStart = 2250              -66*(itrAll-j);
  dataEnd   = length(data)-396  -66*(itrAll-j);
else
  dataStart = 2250;
  dataEnd   = length(data)-396;
end

%choose initial condition in data at high velocity (ca 0.2 m s^-1)
while data(dataStart,4) < 0.2
  dataStart = dataStart+1;
end

%time vector
t = ( data(dataStart:dataEnd,1)-data(dataStart,1) );

%input vector
u = data(dataStart:dataEnd,2);

%output vector
y = data(dataStart:dataEnd,3);      %position of cart

minMax(i) = max(y)-min(y);          %mean(minMax(5:end)) = 0.0268 m

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

  if plotAll
    subplot(14,5,i-4)
  end
  
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

  if plotAll
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
  end
  
  drawnow

  %figure;
  run mainest.m
  
  set(gca,'FontSize',7.5)
  title(subTitle)
  
  if plotAll
    axis off, axis tight
  else
    grid on, grid minor
  end
  
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
  if plotAll == 1
    subplot(14,5,i-4)
  end
  
  plot(t,y); hold on; plot(t,Ynew)
  
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

  if plotAll
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
  end
  
  title(subTitle)
  
  if plotAll
    axis off, axis tight
  else
    grid on, grid minor
  end
  
  drawnow
end

end
  
  %print progress
  printItr = sprintf('Outher iteration %i done, %i to go',itrAll+1-j, j-1);
  disp(printItr)

end








%---------results of new many test and smoothing of results----------------
if 0
%%
clear all, close all, clc
  
loadTmpMany = load('estFrictionsAndErrnMany_new.mat');

b_ccp_many = vertcat(loadTmpMany.b_ccp_vec);
b_ccm_many = vertcat(loadTmpMany.b_ccm_vec);
errn_many  = vertcat(loadTmpMany.errn_vec);

x = (.05:.01:.72)';

figure
plot(x, b_ccp_many)
hold on
plot(x, b_ccm_many)
grid on, grid minor

figure
plot(x, mean(b_ccm_many,2), 'lineWidth', 1.2)
hold on
plot(x, mean(b_ccp_many,2), 'lineWidth', 1.2)

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


plot(x, b_ccm_weighed_mean, 'lineWidth', 1.2)
plot(x, b_ccp_weighed_mean, 'lineWidth', 1.2)
grid on, grid minor


figure
plot(x, errn_many)
grid on, grid minor



figure
hold on

linIntp_p = fit( x, b_ccp_weighed_mean, 'linearinterp' )
linIntp_m = fit( x, b_ccm_weighed_mean, 'linearinterp' )

xx = .05:.001:.72;
yy_p = linIntp_p(xx);
yy_m = linIntp_m(xx);

scatter( xx, yy_p, 40, '.', 'r' )
scatter( xx, yy_m, 40, '.', 'r' )

smoothness = 20;

smoothedCurve_p = smooth(yy_p, smoothness);
smoothedCurve_m = smooth(yy_m, smoothness);

plot(xx, smoothedCurve_p, 'linewidth', 1.8)
plot(xx, smoothedCurve_m, 'linewidth', 1.8)

smoothDownSample_p = downsample(smoothedCurve_p,10);
smoothDownSample_m = downsample(smoothedCurve_m,10);

plot(x, smoothDownSample_p, 'linewidth', 1.8)
plot(x, smoothDownSample_m, 'linewidth', 1.8)
grid on, grid minor


figure
plot(x, smoothDownSample_p, 'linewidth', 1.8)
hold on
plot(x, smoothDownSample_m, 'linewidth', 1.8)
grid on, grid minor

fprintf('p =\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f\n\n', smoothDownSample_p)
fprintf('m =\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f\n\n', smoothDownSample_m)
fprintf('x =\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f, %.4f,\n %.4f, %.4f, %.4f, %.4f\n\n', x)


%%
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



% save estFrictionsAndErrnAllFit2 b_ccp_vec b_ccm_vec b_cv_vec errn_vec

% b_ccp_vec = b_ccp_vec(:,1);
% b_ccm_vec = b_ccm_vec(:,1);
% errn_vec  = errn_vec(:,1);
% 
%save estFrictionsAndErrnMany_new b_ccp_vec b_ccm_vec errn_vec





if 0
%% -----result of new fit with smoothing-----------------------------------
%clear all, close all, clc
loadTmpNew = load('estFrictionsAndErrn_new_atEnd.mat');

b_ccp_load = vertcat(loadTmpNew.b_ccp_vec);
b_ccm_load = vertcat(loadTmpNew.b_ccm_vec);
errn_load  = vertcat(loadTmpNew.errn_vec);

x = (.05:.01:.72)';

figure
plot( x, b_ccp_load )
hold on
plot( x, b_ccm_load )


linIntp_p = fit( x, b_ccp_load, 'linearinterp' )
linIntp_m = fit( x, b_ccm_load, 'linearinterp' )

xx = .05:.001:.72;
yy_p = linIntp_p(xx);
yy_m = linIntp_m(xx);

scatter( xx, yy_p, 40, '.', 'r' )
scatter( xx, yy_m, 40, '.', 'r' )

smoothedCurve_p = smooth(yy_p,20);
smoothedCurve_m = smooth(yy_m,20);

plot(xx, smoothedCurve_p, 'linewidth', 1.8)
plot(xx, smoothedCurve_m, 'linewidth', 1.8)

smoothDownSample_p = downsample(smoothedCurve_p,10);
smoothDownSample_m = downsample(smoothedCurve_m,10);

plot(x, smoothDownSample_p, 'linewidth', 1.8)
plot(x, smoothDownSample_m, 'linewidth', 1.8)

% sds_p = 
% 3.1844, 3.1915, 3.2685, 3.3231, 3.3499, 3.3759, 3.3758, 3.3837, 
% 3.4614, 3.5903, 3.7829, 3.9178, 3.9412, 3.9615, 4.0873, 4.2049, 
% 4.1929, 4.1282, 4.0035, 3.8601, 3.6049, 3.2372, 3.0708, 3.0673, 
% 3.0813, 3.1243, 3.2161, 3.2854, 3.2797, 3.2943, 3.4298, 3.5779, 
% 3.6637, 3.7209, 3.8860, 4.0593, 4.2394, 4.3231, 4.2648, 4.2116, 
% 4.2039, 4.0877, 3.8838, 3.7583, 3.5531, 3.3929, 3.3598, 3.3695, 
% 3.4444, 3.5858, 3.6693, 3.7477, 3.9482, 4.2188, 4.3765, 4.4690, 
% 4.4364, 4.2977, 4.0892, 4.0089, 3.9927, 3.8960, 3.8626, 3.9456, 
% 4.0244, 4.0068, 4.0124, 4.0512

% sds_m =
% 6.6085, 6.4970, 6.1523, 5.8337, 5.6311, 5.4858, 5.2078, 4.7583, 
% 4.4747, 4.3296, 4.1328, 3.9255, 3.7735, 3.7425, 3.8210, 3.9691, 
% 4.1320, 4.1849, 4.3378, 4.5378, 4.7859, 5.2481, 5.5282, 5.4814, 
% 5.3031, 5.0250, 4.6441, 4.3614, 4.1560, 4.0319, 3.8748, 3.6434, 
% 3.5108, 3.4368, 3.2144, 3.0541, 2.9193, 2.8297, 2.9040, 2.9620, 
% 3.1132, 3.3680, 3.5274, 3.7263, 3.8801, 3.9791, 3.9705, 3.8634, 
% 3.7359, 3.6128, 3.4879, 3.2808, 3.2330, 3.3469, 3.5011, 3.5922, 
% 3.5100, 3.5486, 3.6085, 3.7025, 3.8501, 3.8784, 3.8333, 3.7636, 
% 3.7292, 3.8079, 3.7853, 3.6189

%%
end

%---------results of many test and smoothing of results--------------------
if 0
%%
 clear all, close all, clc
  
loadTmpMany = load('estFrictionsAndErrnAllFit_many.mat');

b_ccp_many = vertcat(loadTmpMany.b_ccp_vec);
b_ccm_many = vertcat(loadTmpMany.b_ccm_vec);
errn_many  = vertcat(loadTmpMany.errn_vec);

x = (.05:.01:.72)';

figure
plot(x, b_ccp_many)
hold on
plot(x, b_ccm_many)
grid on, grid minor

figure
plot(x, mean(b_ccm_many,2), 'lineWidth', 1.2)
hold on
plot(x, mean(b_ccp_many,2), 'lineWidth', 1.2)

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


plot(x, b_ccm_weighed_mean, 'lineWidth', 1.2)
plot(x, b_ccp_weighed_mean, 'lineWidth', 1.2)
grid on, grid minor


figure
plot(x, errn_many)
grid on, grid minor



figure
hold on

linIntp_p = fit( x, b_ccp_weighed_mean, 'linearinterp' )
linIntp_m = fit( x, b_ccm_weighed_mean, 'linearinterp' )

xx = .05:.001:.72;
yy_p = linIntp_p(xx);
yy_m = linIntp_m(xx);

scatter( xx, yy_p, 40, '.', 'r' )
scatter( xx, yy_m, 40, '.', 'r' )

smoothness = 70;

smoothedCurve_p = smooth(yy_p, smoothness);
smoothedCurve_m = smooth(yy_m, smoothness);

plot(xx, smoothedCurve_p, 'linewidth', 1.8)
plot(xx, smoothedCurve_m, 'linewidth', 1.8)

smoothDownSample_p = downsample(smoothedCurve_p,10);
smoothDownSample_m = downsample(smoothedCurve_m,10);

plot(x, smoothDownSample_p, 'linewidth', 1.8)
plot(x, smoothDownSample_m, 'linewidth', 1.8)
grid on, grid minor


figure
plot(x, smoothDownSample_p, 'linewidth', 1.8)
hold on
plot(x, smoothDownSample_m, 'linewidth', 1.8)
grid on, grid minor


%resulting lookup vectors
p = [ 2.0599, 2.0662, 2.1381, 2.1714, 2.1948, 2.2462, 2.2906, 2.3641, ...
      2.4541, 2.5419, 2.6354, 2.7466, 2.8576, 2.9494, 3.0025, 3.0104, ...
      3.0008, 2.9567, 2.8189, 2.6462, 2.4794, 2.3163, 2.1865, 2.0951, ...
      2.0488, 2.0721, 2.0967, 2.1510, 2.2220, 2.3104, 2.3658, 2.4560, ...
      2.5617, 2.7070, 2.8373, 2.9427, 3.0279, 3.1276, 3.1694, 3.1450, ...
      3.0841, 2.9708, 2.8381, 2.6918, 2.5490, 2.4321, 2.4032, 2.3836, ...
      2.4188, 2.5065, 2.6558, 2.8007, 2.9618, 3.0691, 3.1635, 3.2093, ...
      3.2171, 3.1765, 3.1086, 3.0108, 2.9393, 2.9058, 2.8899, 2.8902, ...
      2.8996, 2.9615, 2.9700, 3.0784 ];

m = [ 5.6263, 5.4987, 5.1417, 4.9257, 4.6487, 4.3322, 4.0786, 3.8225, ...
      3.5715, 3.3112, 3.0779, 2.9407, 2.8604, 2.8355, 2.8457, 2.9103, ...
      3.0284, 3.1653, 3.3837, 3.6218, 3.8165, 3.9902, 4.1001, 4.1013, ...
      4.0578, 3.8796, 3.6658, 3.4336, 3.1961, 2.9678, 2.8269, 2.6447, ...
      2.4937, 2.3306, 2.1720, 2.0713, 1.9899, 1.9119, 1.9537, 2.0036, ...
      2.1147, 2.2597, 2.4044, 2.5582, 2.6746, 2.7244, 2.7459, 2.7200, ...
      2.6334, 2.5232, 2.4298, 2.3751, 2.3673, 2.3480, 2.3565, 2.4114, ...
      2.4775, 2.5494, 2.6026, 2.6170, 2.6656, 2.6750, 2.7167, 2.7325, ...
      2.7000, 2.6817, 2.7051, 2.5191 ];

figure
plot(x, m, 'linewidth', 1.8)
hold on
plot(x, p, 'linewidth', 1.8)
grid on, grid minor

%%
end


if 0

%final lookup vectors from many without smoothing

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

end












%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  for jj = 1:1
    switch jj
    case 1
        figHandle=gcf;
        fileName='manyEst';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end