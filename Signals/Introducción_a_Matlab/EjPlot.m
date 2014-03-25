function EjPlot

% Manejo de la función plot

figure(1)       % Crea la Figura 1
X = 1:10;       % Crea un vector con los números de 1 a 10
Y1 = 5*X;       % Y1 contiene X multiplicado por 5
Y2 = X.^2;      % Y2 contiene los valores de X al cuadrado
plot(X,Y1,'r')  % Y1 Vs X en rojo
hold            % Retiene gráfica
plot(X,Y2,'b')  % Y2 Vs X en azul
hold            % Libera gráfica
title('Ejemplo Función plot') % Título Gráfica
xlabel('X')     % Título eje horizontal
ylabel('Y1 & Y2')% Título eje vertical
legend('Cinco veces X','X al cuadrado') % Títulos gráficas
axis([0 11 0 110 ]) % Valores límite para los ejes