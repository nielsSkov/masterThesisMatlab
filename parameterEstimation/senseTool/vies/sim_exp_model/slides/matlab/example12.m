% make example 12 plot

mainest;
w1=.04;w2=.2;w3=.5;w4=4;
u1=sin(w1*t);
u2=sin(w2*t);
u3=sin(w3*t);
u4=sin(w4*t);
[psi,Hrn]=psinf(u1,t,par0,simmod);
[Smin,Simin,R,Ri]=sens(Hrn);
j=1;
sellip4sinus
[psi,Hrn]=psinf(u2,t,par0,simmod);
[Smin,Simin,R,Ri]=sens(Hrn);
j=2;
sellip4sinus
[psi,Hrn]=psinf(u3,t,par0,simmod);
[Smin,Simin,R,Ri]=sens(Hrn);
j=3;
sellip4sinus
[psi,Hrn]=psinf(u4,t,par0,simmod);
[Smin,Simin,R,Ri]=sens(Hrn);
j=4;
sellip4sinus