%% Codigo 1a

N = 1e5;        % numero de lancamentos
p = 0.5;        % probabilidade ser rapaz
k = 1;          % rapaz
n = 2;          % em 2 filhos

lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) >= k;
probSimulacao = sum(sucessos) / N

%% Codigo 1b

N = 1e5;        % numero de lancamentos
p = 0.5;        % probabilidade ser rapaz
k1 = 1;         % rapaz
k2 = 2;         % 2 rapazes
n = 2;          % em 2 filhos

prob = nchoosek(n,k1)*p^k1*(1-p)^(n-k1) + nchoosek(n,k2)*p^k2*(1-p)^(n-k2)

%% Codigo 1c

N = 1e5;        % numero de lancamentos
p = 0.5;        % probabilidade ser rapaz
k = 1;          % rapaz
n = 2;          % em 2 filhos

n_filhos = sum(rand(n,N) < 0.5);    
rapaz_1ouM = n_filhos >= 1;

A = n_filhos == 2;
B = rapaz_1ouM;

AB = A & B;

PAB = sum(AB) / sum(B)

%% Codigo 1d

N = 1e5;        % numero de lancamentos
p = 0.5;        % probabilidade ser rapaz
k = 1;          % rapaz
n = 2;          % em 2 filhos

n_filhos = sum(rand(n,N) < 0.5);    



%% Codigo 1e

N = 1e5;        % numero de lancamentos
p = 0.5;        % probabilidade ser rapaz
k = 1;          % rapaz
n = 5;          % em 5 filhos

n_filhos = rand(n,N) < 0.5

A = sum(n_filhos) >= 1;
B = sum(n_filhos) == 2;

prob = sum(A & B) / sum(A)


%% Codigo 1f

N = 1e5;        % numero de lancamentos
p = 0.5;        % probabilidade ser rapaz
k = 1;          % rapaz
n = 5;          % em 5 filhos

n_filhos = rand(n,N) < 0.5

A = sum(n_filhos) >= 1;
B = sum(n_filhos) >= 2;

prob = sum(A & B) / sum(A)

