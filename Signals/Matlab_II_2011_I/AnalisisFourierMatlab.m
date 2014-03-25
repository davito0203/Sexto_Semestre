%% Análisis de Fourier Usando Matlab

%% Serie de Fourier en tiempo discreto

x = ones(1,24)+sin([0:23]*pi/12+3*pi/8); % Cálculo señal
X = fft(x)/24;                           % Cálculo coeficientes

figure                                   % Figura diapositiva 9
omega = [0:23]*2*pi/24;                  % frecs de 0 a 2pi
subplot(2,1,1)
stem(omega, abs(X))
axis([0 2*pi 0 1])
title('Antes de fftshift')
X = fftshift(X);
omega = [-12:11]*2*pi/24;                 % frecs de -pi  a pi
subplot(2,1,2)
stem(omega, abs(X))
axis([-pi pi 0 1])
title('Después de fftshift')

x = [0 0 2 1 2 0];                        % Figura diapositiva 10
x = [x x x 0];
figure
stem(-9:9,x)
axis([-9 9 0 2])

x = [1 2 0 0 0 2];
X = fft(x)/6;
figure
omega = [0:5]*2*pi/6;
stem(omega, X)
axis([-3*pi 3*pi -1 1])
figure
omega = [-12:11]*2*pi/6;
stem(omega,[X X X X],'r')
axis([-3*pi 3*pi -1 1])

%% Transformada de Fourier para tiempo discreto

n = [0:31];                          % Ejemplo diapositiva 16     
x = cos(3*pi*n/8);
X32 = abs(fftshift(fft(x)));
X64 = abs(fftshift(fft(x,64)));
X128 = abs(fftshift(fft(x,128)));
w32 = [-16:15]*2*pi/32;
w64 = [-32:31]*2*pi/64;
w128 = [-64:63]*2*pi/128;

figure
subplot(3,1,1)
stem(w32, X32)
axis([-pi pi 0 20])
subplot(3,1,2)
stem(w64, X64)
axis([-pi pi 0 20])
subplot(3,1,3)
stem(w128, X128)
axis([-pi pi 0 20])

%% Transformaa de Fourier para tiempo Contínuo

omega = -pi*20e3:2*pi*20e3/399:pi*20e3;           % Diapositiva 22
T = 1/20e3;                                       % Espectro pulso cuadrado
M = 31;
W = exp(-1i*omega*T*(M-1)/2).*sin(M*omega*T/2)./sin(omega*T/2);
figure
plot(omega, abs(W))
axis([-1/T 1/T 0 M])

omega = -20:40/599:20;          % Diapositiva 27, espectro calculado
X = (0.1+i*omega)./((.1+i*omega).^2+100)+(0.1+i*omega)./((.1+i*omega).^2+144);
figure
plot(omega,abs(X/40))

T = 0.01;                       % Desarrollo ejemplo
N = 4000;
t = 0:T:24.99;
x = exp(-t/10).*(cos(10*t)+cos(12*t));
Xa = abs(fft(x(1:100),N)/N);
Xb = abs(fft(x(1:500),N)/N);
Xc = abs(fft(x(1:2500),N)/N);
omega = 0:20/511:20;
X = ((0.1+i*omega)./((.1+i*omega).^2+100)+(0.1+i*omega)./((.1+i*omega).^2+144))/40;
n = 2*pi/T*(0:3999)/4000;
figure
subplot(2,2,1)
plot(t,x)
axis([0 24.99 -2 2])
subplot(2,2,2)
stem(n(1:128),Xa(1:128))
hold
plot(omega, abs(X),'r')
axis([0 20 0 0.15])
subplot(2,2,3)
stem(n(1:128),Xb(1:128))
hold
plot(omega, abs(X),'r')
axis([0 20 0 0.15])
subplot(2,2,4)
stem(n(1:128),Xc(1:128))
hold
plot(omega, abs(X),'r')
axis([0 20 0 0.15])
