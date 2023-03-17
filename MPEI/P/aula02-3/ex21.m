%% Codigo 1a
% Toy -> 2 components
% caixa w n toys
% if p1,p2 == defeito: toy defeito
clc;
clear;

p1 = 0.002;
p2 = 0.005;
pa = 0.01;

N = 1e5;
n = 8;

exp_1 = rand(n,N) < p1;
exp_2 = rand(n,N) < p2;
exp_3 = rand(n,N) < pa;

conj = exp_1 | exp_2 | exp_3;
experienceias = sum(conj) >= 1;

p = sum(experienceias)/N;

fprintf("Toy defeito: %f\n", p)

%% Codigo 1b
clc;
clear;

p1 = 0.002;
p2 = 0.005;
pa = 0.01;

N = 1e5;
n = 8;

exp_1 = rand(n,N) < p1;
exp_2 = rand(n,N) < p2;
exp_3 = rand(n,N) < pa;




fprintf("Toy defeito: %f\n", p);
