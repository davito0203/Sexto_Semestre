function EjConv

% Cálculo de la convolución

x = [0 1 1 1 1 1 0];    % Señal de entrada
n = 0:6;                % índices respuesta impulso
alpha = 1.1;            % base respuesta impulso
h = [0 alpha.^n 0];     % respuesta impulso
figure(7)
subplot(2,1,1)
stem(-1:5,x)            % grafico señal de entrada
legend('x[n]')
axis([-1 7 0 2])
subplot(2,1,2)
stem(-1:7,h)            % gráfico respuesta impulso 
legend('h[n]')
axis([-1 7 0 2])

figure(8)
subplot(2,2,1)
stem(-2:12,conv(x,h,'full'))    % Convolución 'full'
title('full')
axis([-2 12 0 8])
subplot(2,2,2)
stem(2:8,conv(x,h,'same'))      % Convolución 'same'
title('same')
axis([-2 12 0 8])
subplot(2,2,3)
stem(conv(x,h,'valid'))         % Convolución 'valid' x*h
title('valid (x*h)')
axis([-2 12 0 8])
subplot(2,2,4)
stem(2:4,conv(h,x,'valid'))     % Convolución 'valid' h*x
title('valid (h*x)')
axis([-2 12 0 8])
