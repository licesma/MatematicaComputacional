%Parte 1
%Mismo método pero corregido
s=sqrt(3)/2;
A=3*s;n=6;
z=[A-pi n A s];
while s>1e-10
    s=s/sqrt(2*(1+sqrt(1-s*s)));
    n=2*n;
    A=n/2*s;
    z=[z; A-pi n A s];
end
Corregido = sprintf('%0.15f',A)

%Parte 2
%Método Nilakantha

x=3;i=2;j=0;
while i<1000000
    x=x+ ((-1)^j)*4/(i*(i+1)*(i+2));
    i=i+2;j=j+1;
end
Nilakantha = sprintf('%0.15f',x)