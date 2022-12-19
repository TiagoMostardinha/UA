%% Codigo 3a
N = 1e5;

k = 4;
xi = 0:4;           % num de dif variaveis
px = zeros(1,5);

exp = randi(0:1,k,N);

for i = 1:length(px)
    px(i) = sum(sum(exp) == i-1) / N;
end

stem(xi, px)
xlabel('xi')
ylabel('px')

%% Codigo 3b
clc

N = 1e5;

lancaments = 4;
xi = 0:4; % numero de dif variaveis
px = zeros(1,5);  % probabilidades
exp = randi(0:1, 4, N);

coroas = sum(exp);

for i = 1:N
    if(coroas(i) == 0)
        px(1) = px(1) + 1;
    end
    if(coroas(i) == 1)
        px(2) = px(2) + 1;
    end
    if(coroas(i) == 2)
        px(3) = px(3) + 1;
    end
    if(coroas(i) == 3)
        px(4) = px(4) + 1;
    end
    if(coroas(i) == 4)
        px(5) = px(5) + 1;
    end
end

for i = 1:length(px)
    px(i) = px(i)/N;
end

%valor esperado
valor_esperado = 0;
for i = xi
    valor_esperado = valor_esperado + i * px(i+1);
end

fprintf("valor_esperado-> %f\n",valor_esperado);

%variancia
variancia = 0;
for i = xi
    variancia = variancia + (i - valor_esperado).^2 * px(i + 1);
end

fprintf("variancia-> %f\n",variancia);


%desvio padrao

desvio_padrao = variancia .^ 0.5;

fprintf("desvio_padrao-> %f\n",desvio_padrao);

%% Codigo 3c
%{
    Tipo de Distribuicao: Distribuicao binomial
    
    Funcao de probabilidade: 
    k = numero de ocorrencias a testar.
    lambda = número esperado de ocorrências.
    sendo a probabilidade 0.5 (1 em cada 2 vezes) e 4 lancamentos, 
    lambda = 4/2 = 2
    f(k, lambda) = (e^-2 * 2^k) / k!
%}
%% Codigo 3d
clc;

N = 1e6;
lancamentos = 4;

xi = 0:4;
px = 0:4;
px_teorico = 0:4;
a = randi(0:1, lancamentos, N);

coroas = sum(a);

soma0 = 0;
soma1 = 0;
soma2 = 0;
soma3 = 0;
soma4 = 0;
for i = 1 : N
    if (coroas(i) == 0)
        soma0 = soma0 + 1;
    end
    if (coroas(i) == 1)
        soma1 = soma1 + 1;
    end
    if (coroas(i) == 2)
        soma2 = soma2 + 1;
    end
    if (coroas(i) == 3)
        soma3 = soma3 + 1;
    end
    if (coroas(i) == 4)
        soma4 = soma4 + 1;
    end
end

px(1) = soma0 / N;
px(2) = soma1 / N;
px(3) = soma2 / N;
px(4) = soma3 / N;
px(5) = soma4 / N;

px

px_teorico(1) = (exp(-2) * 2^0) / factorial(0);
px_teorico(2) = (exp(-2) * 2^1) / factorial(1);
px_teorico(3) = (exp(-2) * 2^2) / factorial(2);
px_teorico(4) = (exp(-2) * 2^3) / factorial(3);
px_teorico(5) = (exp(-2) * 2^4) / factorial(4);

px_teorico

%% Codigo 3e
%{
    E[X] = 1/4 * (0+1+2+3+4) = 10/4
         = 0*1/4 + 1*1/4 + 2*1/4 + 3*1/4 + 4*1/4
    var(X) = 𝐸[𝑋^2] − 𝐸^2[𝑋]
           = 0^2 *1/4 + 1^2 *1/4 + 2^2 *1/4 + 3^2 *1/4 + 4^2 *1/4 -
           (10/4)^2
            = 1
%}
%% Codigo 3f
X = 0:4;
fX = zeros(1,5);

media = sum(fX.*X);
variancia = sum(fX.*(X.^2)) - media^2;

fprintf('Probabilidade de obter pelo menos 2 coroaas = %f\n', sum(fX(3:5)));
fprintf('Probabilidade de obter pelo ate 1 coroa = %f\n', sum(fX(1:2)));
fprintf('Probabilidade de obter pelo entre 1 e 3 coroas = %f\n', sum(fX(2:4)));