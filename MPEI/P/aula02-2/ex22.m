%% Codigo 2a
%{
    90 notas de 5
    9  notas de 50
    1  nota  de 100
    O espaço de amostragem é constituido por 100 elementos(notas),
cada um constituido por 1 nota acima referida
    
    PROBABILIDADES DOS ACONTECIMENTOS ELEMENTARES
    p(5) -> probabilidade de sair nota de 5e
    casos favoraveis: 90
    casos totais: 100
    p(5) = 90/100 = 0.9
    
    p(50) -> probabilidade de sair nota de 50e
    casos favoraveis: 9
    casos totais: 100
    p(50) = 9/100 = 0.09
    p(100) -> probabilidade de sair nota de 100
    casos favoraveis: 1
    casos totais: 100
    p(100) = 1/100 = 0.01
%}

%% Codigo 2b
%   Sx = {5,50,100}
%
%   p(x=5) = 90/100
%   p(x=5) = 9/100
%   p(x=5) = 1/100

%% Codigo 2c
xi = [5 50 100];
xi2 = [0 xi 110];
p = [0.9 0.09 0.01];
b = [0 cumsum(p) 1];

stairs(xi2, b)
xlabel('x')
ylabel('y')