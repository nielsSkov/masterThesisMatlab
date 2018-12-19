xp1 = x  - l1*sin(theta1);
xp2 = x  - l2*sin(theta2);
yp1 = l1 + l1*cos(theta1);
yp2 = l1 + l2*cos(theta2);
yc  = l1;

%Initializing Animation Figure
figure
grid on, grid minor
axis equal
hold on
xlabel('$x$ [m]')
ylabel('$y$ [m]')

%setting axis limits depending on controller choise
switch con
  case 0
    axis([ -1 1 0 1 ])
  case 1
    axis([ -1 1 0 1 ])
  case 2
    axis([ -1 1 0 1 ])
  case 3
    axis([ -1 1 0 1 ])
  case 4
    axis([ -1 1 0 1 ])
end

%Initializing Moving Objects and Trajectory
scatter(xp1(1), yp1(1), '.', 'b')
scatter(xp2(1), yp2(1), '.', 'r')
xp1Last = xp1(1);
xp2Last = xp2(1);
yp1Last = yp1(1);
yp2Last = yp2(1);
cart = rectangle('Position',[ x(1)-.15 yc-.07 .3 .14 ]);
rod1 = plot( [ x(1) xp1(1) ] , [ yc yp1(1) ], 'k', 'linewidth', 3);
rod2 = plot( [ x(1) xp2(1) ] , [ yc yp2(1) ], 'k', 'linewidth', 3);
drawnow


tic;

res = 2; % deviding resolution of simulation data with res


%Animation Loop
for i = 2:length(t)  /res
  
  i = i*res;

  delete(cart)
  cart = rectangle( 'Position',  [ x(i)-.15 yc-.07 .3 .14 ], ...
                    'FaceColor', [ .9 .9 .9 ]);

  delete(rod1)
  rod1 = plot( [ x(i) xp1(i) ] , [ yc yp1(i) ], 'k', 'linewidth', 2 );
  
  delete(rod2)
  rod2 = plot( [ x(i) xp2(i) ] , [ yc yp2(i) ], 'k', 'linewidth', 2 );

  if sqrt( (xp1Last-xp1(i))^2 + (yp1Last-yp1(i))^2 ) >= .01%<--setting
                                                           %  distance
    plot(xp1(i),yp1(i), '.', 'color', 'b')                 %  between
    xp1Last = xp1(i);                                      %  points on the
    yp1Last = yp1(i);                                      %  trajectory
  end
  
  if sqrt( (xp2Last-xp2(i))^2 + (yp2Last-yp2(i))^2 ) >= .01%<--setting
                                                           %  distance
    plot(xp2(i),yp2(i), '.', 'color', 'r')                 %  between
    xp2Last = xp2(i);                                      %  points on the
    yp2Last = yp2(i);                                      %  trajectory
  end

  runT = toc;
  
  while runT < t(i)
    java.lang.Thread.sleep(1);
    runT = toc;
  end
  drawnow
end