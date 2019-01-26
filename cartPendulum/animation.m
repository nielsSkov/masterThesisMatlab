xp = x - l*sin(theta);
yp = l + l*cos(theta);
yc = l;

%Initializing Animation Figure
h_ani = figure;
axAni = axes;
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
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -1 .5 0 1 ])
    end
  case 2
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -.2 9.5 0 1 ])
    end
  case 3
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -.2 7 0 1 ])
    end
  case 4
    if conX
      axis([ -1 1 0 1 ])
    else
      axis([ -.2 6 0 1 ])
    end
end

%Initializing Moving Objects and Trajectory
scatter(axAni, xp(1), yp(1), '.', 'b')
xpLast = xp(1);
ypLast = yp(1);
cart = rectangle(axAni, 'Position',  [ x(1)-.15 yc-.07 .3 .14 ], ...
                        'FaceColor', [ .9 .9 .9 ]                );

rod1 = plot(axAni, [ x(1) xp(1) ] , [ yc yp(1) ], 'k', 'linewidth', 3);
drawnow

tic;

if saveAni
  res = 10
else
  res = 2; % deviding resolution of simulation data with res
end

aniFigs = gobjects( floor(length(t(1:end-110))/res), 1 );

%Animation Loop
for i = 2:length(t(1:end-110))  /res

  i = i*res;

  i/res-1
  
  if saveAni
    figure;
    aniFigs(i/res-1) = gcf;
    grid on, grid minor
    axis equal
    hold on
    xlabel('$x$ [m]')
    ylabel('$y$ [m]')
    axis([ -1 1 0 1 ])
    cart = rectangle( 'Position',  [ x(i)-.15 yc-.07 .3 .14 ], ...
                      'FaceColor', [ .9 .9 .9 ]                );
  else
    delete(cart)
    cart = rectangle(axAni, 'Position',  [ x(i)-.15 yc-.07 .3 .14 ], ...
                             'FaceColor', [ .9 .9 .9 ]                );
  end
  
 
  if saveAni
    rod1 = plot( [ x(i) xp(i) ] , [ yc yp(i) ], 'k', 'linewidth', 2 );
  else
    delete(rod1)
    rod1 = plot(axAni, [ x(i) xp(i) ] , [ yc yp(i) ], 'k', 'linewidth', 2 );
  end
  
  if saveAni
    plot( xp(1:3:i),yp(1:3:i), '.', 'color', [ 0 0 1 ] ) 
  else
    if sqrt( (xpLast-xp(i))^2 + (ypLast-yp(i))^2 ) >= .01 %<--setting
                                                          %   distance
      plot(axAni, xp(i),yp(i), '.', 'color', [ 0 0 1 ])   %   between
      xpLast = xp(i);                                     %   points on the
      ypLast = yp(i);                                     %   trajectory
    end
  end
  
  runT = toc;
  
  while runT < t(i)
    java.lang.Thread.sleep(1);
    runT = toc;
  end
  drawnow
end

%%% choose current figure number:      handle to use for saving:
%%% figure(jj),                        gcf
