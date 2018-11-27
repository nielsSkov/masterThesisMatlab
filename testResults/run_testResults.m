clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/testResults

addpath('~/syncDrive/uni/thesis/matlab/testResults/data/swingUpAndCatch')
addpath('~/syncDrive/uni/thesis/matlab/testResults/data/slidingMode')
addpath('~/syncDrive/uni/thesis/matlab/testResults/data/swingUp')

run('latexDefaults.m')

%///////DATA IMPORT////////////////////////////////////////////////////////
%//
%data1 = csvread('swing1.csv');       %<--falls short
%data1 = csvread('swing1_p008.csv');  %<--overshoots
%data1 = csvread('swing1_p005.csv');  %<--close
%data1 = csvread('swing1_p006.csv');  %<--closer
data1 = csvread('swing1_p007.csv');   %<--it's a beauty

%data2 = csvread('slide1.csv');
%data2 = csvread('slide2.csv');
%data2 = csvread('slide3.csv');
%data2 = csvread('slide4.csv');
%data2 = csvread('slide5.csv');
%data2 = csvread('slide6.csv');
%data2 = csvread('slide7.csv');
%data2 = csvread('slide8.csv');
%data2 = csvread('slide9.csv');
data2 = csvread('slide10.csv');       %<--beautiful restabilization in 2*pi

%data3 = csvread('swNsl1.csv');
%data3 = csvread('swNsl2.csv');
%data3 = csvread('swNsl3.csv');
data3 = csvread('swNsl4.csv');        %<--this is nice
%data3 = csvread('swNsl5.csv');

data = data3;
%//
%//////////////////////////////////////////////////////////////////////////

dataStart = 1;
dataEnd   = length(data);

t         = data( dataStart:dataEnd,  1 );
x1        = data( dataStart:dataEnd,  2 );
x1Wrap    = data( dataStart:dataEnd,  3 );
x1_FIR    = data( dataStart:dataEnd,  4 );
x2        = data( dataStart:dataEnd,  5 );
x2_FIR    = data( dataStart:dataEnd,  6 );
x3        = data( dataStart:dataEnd,  7 );
x3_FIR    = data( dataStart:dataEnd,  8 );
x4        = data( dataStart:dataEnd,  9 );
x4_FIR    = data( dataStart:dataEnd, 10 );
ia_noComp = data( dataStart:dataEnd, 11 );
ia        = data( dataStart:dataEnd, 12 );
B_c_c     = data( dataStart:dataEnd, 13 );


figure
plot(t)
title('time')

figure
plot( t, x1 )
hold on
plot( t, x1_FIR )
xlabel('$t$ [s]')
ylabel('$x_1$ [ rad ]')
%for swing-up
%ylim([ 0 2*pi])

figure
plot( t, x2 )
hold on
plot( t, x2_FIR )
xlabel('$t$ [s]')
ylabel('$x_2$ [ m ]')

figure
plot( t, x3 )
hold on
plot( t, x3_FIR )
xlabel('$t$ [s]')
ylabel('$x_3$ [ rad $\cdot$ s$^{-1}$ ]')

figure
plot( t, x4 )
hold on
plot( t, x4_FIR )
xlabel('$t$ [s]')
ylabel('$x_4$ [ m $\cdot$ s$^{-1}$ ]')

figure
plot( t, ia )
hold on
plot( t, ia_noComp)
xlabel('$t$ [s]')
ylabel('$i_a$ [ A ]')

figure
plot( t, B_c_c)
xlabel('$x_1$ [m]')
ylabel('$b_{c,c}$ [ N ]')






%FRICTION EXPERIMENT
if 0
  r     = 0.028;
  k_tau = 0.0934;

  frictionComp = zeros(size(x4));
  for i=1:length(x4)
    if x4(i) > 0.01
      frictionComp(i) = r / k_tau *( smoothDownSample_p(round((x2(i)+.38)*100)+1)*sign(x4(i)) );
    elseif x4(i) < 0.01
      frictionComp(i) = r / k_tau *( smoothDownSample_m(round((x2(i)+.38)*100)+1)*sign(x4(i)) );
    else
      frictionComp(i) = 0;
    end
  end

  figure
  plot( x2, frictionComp)
  xlabel('$t$ [s]')
  ylabel('comp [ A ]')
end

