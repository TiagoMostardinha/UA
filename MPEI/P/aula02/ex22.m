%% Codigo 2a
clc;

N = 1e5;        % numero de lancamentos

lancamentos = randi(100,20,N);

for i = 1:N
    res(i) = length(unique(lancamentos(:,i))) == 20;
end;

prob = sum(res)/N

%% Codigo 2b
clc;

lancamentos = randi(100,20,N);

for i = 1:N
    res(i) = length(unique(lancamentos(:,i))) < 20;
end;

prob = sum(res) / N