function EjPlot2

% Uso de subplot y stem

figure(2)       % Crea la Figura 1
X = 1:10;       % Crea un vector con los n�meros de 1 a 10
Y1 = 5*X;       % Y1 contiene X multiplicado por 5
Y2 = X.^2;      % Y2 contiene los valores de X al cuadrado
subplot(2,1,1)
stem(X,Y1,'r')  % Y1 Vs X en rojo
title('Ejemplo Funci�nes subplot y stem') % T�tulo Gr�fica
xlabel('X')     % T�tulo eje horizontal
ylabel('Y1')    % T�tulo eje vertical
legend('Cinco veces X') % T�tulos gr�ficas
axis([0 11 0 110 ]) % Valores l�mite para los ejes
subplot(2,1,2)
stem(X,Y2,'bx') % Y2 Vs X en azul
xlabel('X')     % T�tulo eje horizontal
ylabel('Y2')    % T�tulo eje vertical
legend('X al cuadrado') % T�tulos gr�ficas
axis([0 11 0 110 ]) % Valores l�mite para los ejes