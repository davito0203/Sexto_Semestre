function punto1  % Primer punto del taller

XV = input('Ingrese el valor del vector X(t)\n'); %Recibe el valor del vector
n = 1:length(XV);   % índices
n0 = input('Ingrese el valor de n0 \n');
if n0 <=50
    n0 = n0;
else 
    disp('Ingrese un digito entre mayor a 0');
    return
end

%Punto J del primer punto
for i=1:length(XV)
    suma=0; %suma de cada y[n]
    for j =i-n0:i+n0
        if (j>=1 && j<=length(XV)) % si esta dentro de los limites del vector
            suma = suma + XV(j);
        end
    end
    S(i)=suma; %Salida final
end

figure(1)
stem(n,XV)
hold
stem(n,S,'rs')
hold
legend('Vector','Salida del Vector')

%Punto P del Primer punto

for k=1:length(XV)
    if(k<0)
        suma1=0;
    else
        if(k-2<=0)
            suma1 =XV(k);
        else
            suma1 = XV(k) + XV(k-2);
        end
    end
    S1(k)= suma1;   %Salida final
end
figure(2)
stem(n,XV)
hold
stem(n,S1,'rs')
hold
legend('X[n]','Y = X[n+1]')