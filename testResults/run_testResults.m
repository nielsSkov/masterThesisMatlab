clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/testResults

addpath('~/syncDrive/uni/thesis/matlab/testResults/data/swingUpAndCatch')
addpath('~/syncDrive/uni/thesis/matlab/testResults/data/slidingMode')
addpath('~/syncDrive/uni/thesis/matlab/testResults/data/swingUp')

run('latexDefaults.m')

%data = csvread('swNca6.csv'); %perfect
%data = csvread('swNca7.csv'); %kalmanfilter fail

%data = csvread('slide2.csv'); %short
%data = csvread('slide3.csv'); %long

%data = csvread('swing1.csv');      %<-no offset, falls a bit short
%data = csvread('swing6_p008.csv'); %<-E_offset = 0.008  it's a beauty

dataStart = 1;
dataEnd   = length(data);

t         = data( dataStart:dataEnd,  1 );
x1        = data( dataStart:dataEnd,  2 );
x1_FIR    = data( dataStart:dataEnd,  3 );
x2        = data( dataStart:dataEnd,  4 );
x2_FIR    = data( dataStart:dataEnd,  5 );
x3        = data( dataStart:dataEnd,  6 );
x3_FIR    = data( dataStart:dataEnd,  7 );
x4        = data( dataStart:dataEnd,  8 );
x4_FIR    = data( dataStart:dataEnd,  9 );
ia_noComp = data( dataStart:dataEnd, 10 );
ia        = data( dataStart:dataEnd, 11 );

figure
plot(t)
title('time')

figure
plot( t, x1 )
hold on
plot( t, x1_FIR )
xlabel('$t$ [s]')
ylabel('$x_1$ [ rad $\cdot$ s$^{-1}$ ]')

figure
plot( t, x2 )
hold on
plot( t, x2_FIR )
xlabel('$t$ [s]')
ylabel('$x_2$ [ m $\cdot$ s$^{-1}$ ]')

figure
plot( t, x3 )
hold on
plot( t, x3_FIR )
xlabel('$t$ [s]')
ylabel('$x_3$ [ rad $\cdot$ s$^{-2}$ ]')

figure
plot( t, x4 )
hold on
plot( t, x4_FIR )
xlabel('$t$ [s]')
ylabel('$x_4$ [ m $\cdot$ s$^{-2}$ ]')

figure
plot( t, ia )
hold on
plot( t, ia_noComp)
xlabel('$t$ [s]')
ylabel('$i_a$ [ A ]')

figure
plot( t, ia-ia_noComp)
xlabel('$t$ [s]')
ylabel('comp [ A ]')


