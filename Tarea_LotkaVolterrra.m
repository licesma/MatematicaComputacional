%Ejercicio de examen de prueba realizado como una función 

function LV(a, b, c, d, x0, y0, Delta, T)
%Donde a, b, c, d son parametros. 
%x0, y0 son las condiciones iniciales.}
%Delta es el paso de integracion
%T es el intervalo de integracion

%Numero de iteraciones del algoritmo de interacion 
np = T / Delta;
np = round(np,0);  

%Algoritmo de integracion numerica
x(1) = x0; 
y(1) = y0; 

for k = 2:np
    x(k) = x(k-1) + (a * x(k-1) - b * x(k-1) * y(k-1)) * Delta;
    y(k) = y(k-1) + (-c * y(k-1) + d * x(k-1) * y(k-1)) * Delta; 
end

subplot(2,1,1);
plot(x); 
hold on; 
plot(y); 
xlabel('t');
legend('x(t)', 'y(t)'); 

subplot(2,1,2);
plot(x,y); 
xlabel('x(t)');
ylabel('y(t)');
title('Plano fase');

end