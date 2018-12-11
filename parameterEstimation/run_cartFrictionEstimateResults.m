clear all; close all; clc                                                  %#ok<CLALL>

cd ~/syncDrive/uni/thesis/matlab/parameterEstimation;

run('latexDefaults.m')

%define variable for default matlab plot color
matlabBlue   = [ 0      0.4470 0.7410 ];
matlabRed    = [ 0.8500 0.3250 0.0980 ];
matlabPurple = [ 0.4940 0.1840 0.5560 ];

%M = 6.28;

loadTmpMany = load('estFrictionsAndErrnMany_new.mat');

%load results of estimates
b_ccp_many = vertcat(loadTmpMany.b_ccp_vec);
b_ccm_many = vertcat(loadTmpMany.b_ccm_vec);
errn_many  = vertcat(loadTmpMany.errn_vec);

%position vector
x = (.05:.01:.72)';

%plot the errornorms
h_cartErrn = figure;
hold on
for i = 1:34
  p1 = scatter( x, errn_many(:,i), 30, '.', 'cdata', matlabPurple );
end
p2 = plot( x, mean(errn_many,2), 'lineWidth', 1.5, 'color', matlabPurple );
grid on, grid minor
xlabel('$x$ [m]')
ylabel('errn')
legend( [p1 p2], 'Errn for Each Estimate', 'Mean at Each Position')

%-------calculating weighed average using errn as weights------------------
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
%--------------------------------------------------------------------------

%plot mean of estimations
h_cartMeanOfEst = figure;
plot(x, mean(b_ccm_many,2), 'lineWidth', 1.2)
hold on
plot(x, mean(b_ccp_many,2), 'lineWidth', 1.2)
%add weighed average to plot of means
plot(x, b_ccm_weighed_mean, 'lineWidth', 1.2)
plot(x, b_ccp_weighed_mean, 'lineWidth', 1.2)
grid on, grid minor
xlabel('$x$ [m]')
ylabel('$b_{c,c}$ [ N$\cdot$m ]')


%plot results with weighed average
h_cartColoumb = figure;
hold on
for i = 1:34
  p1 = scatter( x, b_ccp_many(:,i), 30, '.', 'cdata', matlabBlue );
  p2 = scatter( x, b_ccm_many(:,i), 30, '.', 'cdata', matlabRed );
end
p3 = plot(x, b_ccp_weighed_mean, 'lineWidth', 1.5, 'color', matlabBlue);
p4 = plot(x, b_ccm_weighed_mean, 'lineWidth', 1.5, 'color', matlabRed);
grid on, grid minor
xlabel('$x$ [m]')
ylabel('$b_{c,c}$ [ N$\cdot$m ]')
legend( [ p1 p2 p3 p4 ],                  ...
        '$b_{c,c}^+$',                    ...
        '$b_{c,c}^-$',                    ...
        'Weighed Average of $b_{c,c}^+$', ...
        'Weighed Average of $b_{c,c}^-$'  )


%------calculate linear interpolation points-------------------------------
linIntp_p = fit( x, b_ccp_weighed_mean, 'linearinterp' );
linIntp_m = fit( x, b_ccm_weighed_mean, 'linearinterp' );

xx = .05:.001:.72;
yy_p = linIntp_p(xx);
yy_m = linIntp_m(xx);
%--------------------------------------------------------------------------

%-------smoothe the curves-------------------------------------------------
%set for smoothing
smoothness = 20;

%smooth the interpolated data
smoothedCurve_p = smooth(yy_p, smoothness);
smoothedCurve_m = smooth(yy_m, smoothness);

%downsample smoothed result for lookup implementation
smoothDownSample_p = downsample(smoothedCurve_p,10);
smoothDownSample_m = downsample(smoothedCurve_m,10);
%--------------------------------------------------------------------------

h_cartColoumbSmooth = figure;
hold on
%result of interpolation
scatter( xx, yy_p, 40, '.', 'r' )
scatter( xx, yy_m, 40, '.', 'r' )
%add plot of smoothed data
plot(xx, smoothedCurve_p, 'linewidth', 1.5)
plot(xx, smoothedCurve_m, 'linewidth', 1.5)
%add plot of final result
plot(x, smoothDownSample_p, 'linewidth', 1.5)
plot(x, smoothDownSample_m, 'linewidth', 1.5)
grid on, grid minor
xlabel('$x$ [m]')
ylabel('$b_{c,c}$ [ N$\cdot$m ]')

%plot final result with weighed average 
h_cartColoumbSmoothDownSample = figure;
hold on
plot(x, b_ccp_weighed_mean, 'lineWidth', 1.5, 'color', matlabPurple);
p1 = plot(x, b_ccm_weighed_mean, 'lineWidth', 1.5, 'color', matlabPurple);
p2 = plot(x, smoothDownSample_p, 'linewidth', 1.5, 'color', matlabBlue);
p3 = plot(x, smoothDownSample_m, 'linewidth', 1.5, 'color', matlabRed);
grid on, grid minor
xlabel('$x$ [m]')
ylabel('$b_{c,c}$ [ N$\cdot$m ]')
legend( [ p1 p2 p3 ],                     ...
        'Weighed Averages',               ...
        'Smoothed $b_{c,c}^+$',           ...
        'Smoothed $b_{c,c}^-$'            )



%% ----------SAVE PLOTS----------------------------------------------------

%remember to float the windows before saving (for consistent scale)
if 0
  figurePath1 = ...
    '~/syncDrive/uni/thesis/report/report/figures/original/';  %#ok<UNRCH>
  figurePath2 = ...
    '~/syncDrive/uni/thesis/report/report/figures/';
  fileTypeOrig = "fig";
  
  for jj = 1:1:3
    switch jj
    case 1
        figHandle=h_cartColoumb;
        fileName='cartColoumb';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 2
        figHandle=h_cartErrn;
        fileName='cartErrn';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    case 3
        figHandle=h_cartColoumbSmoothDownSample;
        fileName='cartColoumbSmoothDownSample';
        saveFig(figHandle,fileName,fileTypeOrig,figurePath1,figurePath2,3);
    end
  end
end