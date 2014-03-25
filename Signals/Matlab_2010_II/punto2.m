function punto2 %segundo punto
XV = 4./[1 2 3];
n = 1:3; %intervalo del vector
n1 = -11:6;%intervalo del vector concatenado
n2 = -11:12;%intervalo del vector para la parte C
n4 = -11:15;%intervalo del vector concatenado
n5 = -3:1; %Utilizado para la señal impulso
n6 = -8:6;%Utilizado par la señal paso

%parte a X[n]
XV1 = [XV, XV, XV, XV, XV, XV];%Vector concatenado
figure(2)
hold
stem(n1,XV1)
hold
legend('X(n)=1/n')

%parte b X(2-4*n)  
for i = 1:3 %Intervalo en el que se va asignar el nuevo valor
 YV(i) = XV1(14-4*i); %salida para cada posicion
end
YV1 = [YV, YV, YV, YV, YV, YV];%vector concatenado de la salida anterior
figure(3)
stem(n1,XV1)
hold
stem(n1,YV1,'rs')
hold
legend('X[n]','Y = X[2-4n]')

%parte c X[n/4]
XV4 = [XV, XV, XV, XV, XV, XV, XV, XV, XV];%Vector concatenado
YV1 = zeros(1,12); %Ceros del intervalo
for i = 4:4:12 %Posicion que en donde se va a asignar el valor del vector original
 YV1(i) = XV1(i/4); %Vector de salida, asignando ceros y valores al vector de salida
end
YV2 = [YV1 YV1]; %Vector concatenado
figure(4)
stem(n4,XV4)
hold
stem(n2,YV2,'rs')
hold
legend('X[n]')

%%Parte d Señal impulso
delta = [0 1 0 0 0]; %Vector señal impulso corrida 2 a la izquierda
figure(5)
subplot(2,1,1)
stem(n5,delta, 'rs')
hold
stem(n, XV)
hold
legend('Delta[n+2]','X[n]')

%convolucion de la señal y delta
figure(5)
subplot(2,1,2)
stem(conv(XV,delta,'full'))%no pude arreglar los indices, lo hice de esta forma para que sea aplicable a caulquier vector
hold
legend('Convolución')

%%Parte e Señal paso
XV2 = [XV, XV, XV, XV, XV];
u = [1 1 1 1 1 1 1 1 0 0 0 0 0 0 0]; %Vector de la señal paso invertida y corrida 1 a la izquiera
YV = fliplr(XV2); %Reflejar el vector estando el primer impulso en el centro del intervalo
figure(6)
subplot(2,1,1)
stem(n6,u)
hold
stem(n6,YV,'rs')
legend('u[-n+1])','X[-n]')
%Multiplicacion
figure(6)
subplot(2,1,2)
stem(n6,times(YV,u)) %Multiplicación punto a punto
hold
legend('X[-n]u[-n+1]')