function EjTrans

% Transformaciones de la variable independiente

XV = [0 1 2 3 2 1 0 -1 -2 -3 -2 -1 0];   % Se�al definida como vector
n = 0:12;       % �ndices
XF = sqrt(n);   % Se�al definida como funci�n

YV = [XV(4:end) zeros(1,3)];    % Corrimiento en tiempo vector
figure(3)
subplot(2,1,1)
stem(n,XV)
hold
stem(n,YV,'rs')
hold
legend('X[n]','Y = X[n+3]')

YF = sqrt(n+3);                 % Corrimiento en tiempo funci�n
figure(3)
subplot(2,1,2)
stem(n,XF)
hold
stem(n,YF,'rs')
hold
legend('X[n]','Y = X[n+3]')

XVt = [zeros(1,12) XV]; % Inversi�n como vector
YV = fliplr(XVt);
figure(4)
subplot(2,1,1)
stem(-12:12,XVt)
hold
stem(-12:12,YV,'rs')
hold
legend('X[n]','Y = X[-n]')
axis([-12 12 -4 4])

nt = [zeros(1,12) n];   %Inversi�n como funci�n
XFt = sqrt(nt);
YF = sqrt(fliplr(nt));
figure(4)
subplot(2,1,2)
stem(-12:12,XFt)
hold
stem(-12:12,YF,'rs')
hold
legend('X[-n]','Y = X[-n]')
axis([-12 12 0 4])

XVt = [XV zeros(1,12) ];    % Escalamiento por >1 como vector
YV = zeros(1,13);
for i = 1:13
 YV(i) = XVt(2*i-1);
end
figure(5)
subplot(2,1,1)
stem(n,XV)
hold
stem(n,YV,'rs')
hold
legend('X[n]','Y = X[2n]')
axis([0 12 -4 4])

YF = sqrt(2*n);  % Escalamiento por >1 como funci�n
figure(5)
subplot(2,1,2)
stem(n,XF)
hold
stem(n,YF,'rs')
hold
legend('X[n]','Y = X[2n]')
axis([0 12 0 6])

YV = zeros(1,13);    %Escalamiento por <1 como vector
for i = 1:2:13
 YV(i) = XV((i-1)/2+1);
end
figure(6)
subplot(2,1,1)
stem(n,XV)
hold
stem(n,YV,'rs')
hold
legend('X[n]','Y = X[n/2]')
axis([0 12 -4 4])

YF = zeros(1,13);   % Escalamiento por <1 como funci�n
for i = 0:2:13
 YF(i+1) = sqrt(i/2);
end
figure(6)
subplot(2,1,2)
stem(n,XF)
hold
stem(n,YF,'rs')
hold
legend('X[n]','Y = X[n/2]')
axis([0 12 0 6])
