function punto3 %Tercer punto

A = input('Ingrese el valor de A\n'); %Recibe el dato A
B = input('Ingrese el valor de B\n'); %Recibe el dato B
C = input('Ingrese el valor de C\n'); %Recibe el dato C
D = input('Ingrese el valor de D\n'); %Recibe el dato D
delta = input('Ingrese el valor de Delta\n'); %Recibe el dato delta
XV = input('Ingrese el valor del vector X(t)\n'); %Recibe el valor del vector
n = 1:length(XV); %Intervalo del vector
XV1 = [zeros(1,1) XV(1:end-1)]; %Corrimiento del vector 1 a la derecha
%YV1 = [zeros(1,1) YV(1:end-1)]; %Corrimiento del vector 1 a la derecha
%YV = YV1*A/(A+B*delta) + XV*(C+D*delta)/(A+B*delta) - XV1(i-1)*C/(A+B*delta);
for i = 2:delta:length(XV)
    YV(i) = YV1(i-1)*A/(A+B*delta) + XV(i)*(C+D*delta)/(A+B*delta) - XV1(i-1)*C/(A+B*delta);  %Salida de la ecuacion diferencial
end
%YV = (A*YV1)/(A + B*delta)
%YV1 = [zeros(1,1) YV(1:end-1)]; 
figure(7)
stem(n,XV)
hold
stem(n,YV,'rs')
hold
legend('x[n]', 'x[n-1]')