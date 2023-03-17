N=1e5;          % n lancamentos
p = 0.5;        % prob de sair cara
k=6;            % 6 caras
n=15;           % em 15 lancamentos

lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos) == k;
probSimulacao = sum(sucessos) / N
