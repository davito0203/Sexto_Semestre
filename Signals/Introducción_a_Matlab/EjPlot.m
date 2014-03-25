function EjPlot

% Manejo de la funci�n plot

figure(1)       % Crea la Figura 1
X = 1:10;       % Crea un vector con los n�meros de 1 a 10
Y1 = 5*X;       % Y1 contiene X multiplicado por 5
Y2 = X.^2;      % Y2 contiene los valores de X al cuadrado
plot(X,Y1,'r')  % Y1 Vs X en rojo
hold            % Retiene gr�fica
plot(X,Y2,'b')  % Y2 Vs X en azul
hold            % Libera gr�fica
title('Ejemplo Funci�n plot') % T�tulo Gr�fica
xlabel('X')     % T�tulo eje horizontal
ylabel('Y1 & Y2')% T�tulo eje vertical
legend('Cinco veces X','X al cuadrado') % T�tulos gr�ficas
axis([0 11 0 110 ]) % Valores l�mite para los ejes