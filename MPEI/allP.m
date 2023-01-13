%% Matriz de Transição
%    A B C
T = [x y z;
     a b c;
     0 0 f];

%% Estado cadeia num instante
x0 = [1;
      0];

xkm1 = T*xk;

%% Equilibrio
T = [0.7 0.8;
     0.3 0.2;];

pij = [];

for n=1 : 10
    Tn = T^n;
    M = [M Tn(:)];
    plot(M');
    drawnow;
end

Tn

%% Vetor estado estacionário
T=[7 8; 3 2]/10;

M = [T-eye(2);
     ones(1,2)];

x=[0 0 1]';

u=M\x

%% Matriz Fundamental
% Tn = [Qn 0;
%       X  I];
%
F = inv(eye(size(Q))-Q)

%% Numero medio de visitas
estados=[1 2 3 4];
% matriz T
Tcan=zeros(4);
Tcan(1,1)=0.8; Tcan(2,1)=0.2;
Tcan(2,2)=0.9; Tcan(3,2)=0.1;
Tcan(1,3)=0.3; Tcan(2,3)=0.2; Tcan(3,3)=0.4; Tcan(4,3)=0.1;
Tcan(4,4)=1;

% Q
Q=Tcan(1:3,1:3)

% F
aux= eye(size(Q)) - Q
F=inv(aux)

%% tempo medio ate absorcao
t=F' * ones(3,1) % ou sum(F)

%% Distancia e similariedade de Jaccard
str1 = "When nine hundred years old you reach, look as good you will not.";
str2 = "You will not look as good when nine hundred years old";

C1 = unique(strsplit(lower(str1)));
C2 = unique(strsplit(lower(str2)));
simJ = length(intersect(C1,C2))/ length(union(C1,C2))
