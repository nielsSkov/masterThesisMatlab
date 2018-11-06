% prob22 creates the data for problem 2.2
%
% 28/11-02,MK

sys=zpk(0, [-1,-5,-10,-20], 2)
[n,d]=tfdata(sys);
sys22=tf(2000,d)

[y22 t]=step(sys22);

plot(t,y22); title('Response to a unit step of sys22')
xlabel('Time (s)'), ylabel('y22'), grid

pause
bode(sys22), title('Bode plot of sys22')

save prob22  sys22 t y22

