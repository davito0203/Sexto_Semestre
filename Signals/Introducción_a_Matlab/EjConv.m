function EjConv

% C�lculo de la convoluci�n

x = [0 1 1 1 1 1 0];    % Se�al de entrada
n = 0:6;                % �ndices respuesta impulso
alpha = 1.1;            % base respuesta impulso
h = [0 alpha.^n 0];     % respuesta impulso
figure(7)
subplot(2,1,1)
stem(-1:5,x)            % grafico se�al de entrada
legend('x[n]')
axis([-1 7 0 2])
subplot(2,1,2)
stem(-1:7,h)            % gr�fico respuesta impulso 
legend('h[n]')
axis([-1 7 0 2])

figure(8)
subplot(2,2,1)
stem(-2:12,conv(x,h,'full'))    % Convoluci�n 'full'
title('full')
axis([-2 12 0 8])
subplot(2,2,2)
stem(2:8,conv(x,h,'same'))      % Convoluci�n 'same'
title('same')
axis([-2 12 0 8])
subplot(2,2,3)
stem(conv(x,h,'valid'))         % Convoluci�n 'valid' x*h
title('valid (x*h)')
axis([-2 12 0 8])
subplot(2,2,4)
stem(2:4,conv(h,x,'valid'))     % Convoluci�n 'valid' h*x
title('valid (h*x)')
axis([-2 12 0 8])
