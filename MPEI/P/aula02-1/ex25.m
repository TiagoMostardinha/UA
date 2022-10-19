%% Codigo 5a
N = 1e5;

lancamentos = randi([1,6],2,N);

A = sum(sum(lancamentos) == 9) / N;
B = sum(mod(lancamentos(1,:),2) == 0) / N;
C = sum(sum(lancamentos == 5) >= 1) / N;
D = sum(sum(lancamentos == 1) == 0) / N;

fprintf("probA) %f \n",A);
fprintf("probB) %f \n",B);
fprintf("probC) %f \n",C);
fprintf("probD) %f \n",D)

%% Codigo 5b
clc

N = 1e5;

lancamentos = randi([1,6],2,N);

A = sum(lancamentos) == 9;
B = mod(lancamentos(1,:),2) == 0;


AB = sum(A & B) / N;

PA = sum(A) / N;
PB = sum(B) / N;

fprintf("probAB) %f \n",AB);
fprintf("probA*B) %f \n",PA.*PB)

% A e B são 2 probabilidades independentes

%% Codigo 5c
clc

N = 1e5;

lancamentos = randi([1,6],2,N);

C = sum(lancamentos == 5) >= 1;
D = sum(lancamentos == 1) == 0;

CD = sum(C & D) / N;

PC = sum(C) / N;
PD = sum(D) / N;

fprintf("probCD) %f \n",CD);
fprintf("probC*D) %f \n",PC.*PD)

% C e D não são 2 probabilidades independentes



