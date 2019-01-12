clear all; close all; clc                                                  %#ok<CLALL>

%change path to directory containing the project files
cd ~/syncDrive/uni/thesis/matlab/twinKalman

%-------first testing with 3x3 matrices------------------------------------

testM1 = [ 1.7212  8.4942  -4.9037  ;
          -9.1068  1.7791   7.8909  ;
          10.6538  3.7150  -2.3342 ];

testM2 = [ 7.8594 -8.1829 -10.0287  ;
           2.8055 -6.2399   7.4899  ;
           1.5767  5.8865   7.1679 ];

transpose = testM1';       %confirmed working

inverse   = inv(testM1);   %confirmed working

substract = testM1-testM2; %confirmed working

add       = testM1+testM2; %confirmed working

multiply  = testM1*testM2; %confirmed working

%-------test 3x4 4x3 to make sure it works with uneven sizes too-----------

testM3 = [ 1.7212  8.4942  -4.9037  1.4168 ;
          -9.1068  1.7791   7.8909 -9.5269  ;
          10.6538  3.7150  -2.3342 -5.0605 ];

testM4 = [ 7.8594 -8.1829 -10.0287  ;
           2.8055 -6.2399   7.4899  ;
           1.5767  5.8865   7.1679  ;
          -10.0527 2.7379  -4.4228 ];

unevenMultiply   = testM3*testM4; %confirmed working 

unevenTranspose  = testM3';       %confirmed working

%-------c-code-ish version was used to find mistake------------------------

matrix =[ 1.7212,  8.4942,  -4.9037,  1.4168, ...
         -9.1068,  1.7791,   7.8909, -9.5269, ...
         10.6538,  3.7150,  -2.3342, -5.0605  ];

matrixT = zeros(size(matrix));

r1 = 3; c1 = 4;
for i = 0:r1-1
  for j = 0:c1-1
      matrixT(j *r1+ i +1) = matrix(i *c1+ j +1);
  end
end

matrixTmatrix = [ matrixT(1:3)    ;
                  matrixT(4:6)    ;
                  matrixT(7:9)    ;
                  matrixT(10:12) ];

%--------------------------------------------------------------------------