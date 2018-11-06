% example3: an illustrative one dimensional exampel using
% Newton method for determination of minimum of a function.
% 4/4-97,7/2-03,MK

format compact
  
x= 1:100; v= 100./x + .0001*x.^3;
plot(v,'b'), title('Newton iteration')
xlabel('x'), ylabel('v'), pause

xo=80; upd=xo;  no=1;
while abs(upd/xo) > .002  
   
  disp(['...... Iteration no:  ',num2str(no),' ......'])  
  vo= 100./xo + .0001*xo.^3;  
  go= -100./xo.^2 + .0003*xo.^2;
  ho= 200./xo.^3 + .0006*xo;
  vm= vo + go*(x-xo) + 0.5*ho*(x-xo).^2;
  upd= - go/ho,
  xm= xo +upd,  v1 = vo + go*(xm-xo) + 0.5*ho*(xm-xo).^2;
  hold on, plot(x,vm,'r',xo,vo,'o'),
  plot(xm,v1,'*'), 
   
    if no<4, disp('Press a key for next iteration ...'), pause,  end   
  xo=xm; no=no+1;
end

hold off
