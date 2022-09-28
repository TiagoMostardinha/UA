%% Codigo 6a-simulacao

N = 1e5;        % n lancamentos
p = 0.3;        % prob de defeituoso
k = 3;          % 3 pecas def.
n = 5;          % em 5 lancamentos

lancamentos = rand(n,N) < p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos) / N


%% Codigo 6a-analiticamente

N = 1e5;        % n lancamentos
p = 0.3;        % prob de defeituoso
k = 3;          % 3 pecas def.
n = 5;          % em 5 lancamentos

prob = nchoosek(n,k)*p^k*(1-p)^(n-k)    % nchoosek(n,k)= n!/(n-k)!/k!