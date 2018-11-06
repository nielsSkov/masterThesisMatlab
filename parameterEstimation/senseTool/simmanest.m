function y=simmanest(u,t,par)

k=par(1);
tau=par(2);

[nz,dz]=c2dm(k,[tau 1],t(3)-t(2),'foh');        % Discretization
y=filter(nz,dz,u);                             % Model output



