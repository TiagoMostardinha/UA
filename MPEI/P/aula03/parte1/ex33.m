%% Codigo 3a
T = rand(20, 20);

for i = 1 : 20
    c(i) = sum(T(:,i));
end
c;
% n e estocatica

%% Codigo 3b
clc

T = rand(20,20);

for i = 1 : 20
    c = sum(T(:,i));
    T(:,i) = T(:,i) / c;
end

x0 = zeros(20,1);
x0(1) = 1;

res1 = T^2 * x0;
res1(20,1);

res1 = T^2;
res1(20,1)

res1 = T^5;
res1(20,1)

res1 = T^10;
res1(20,1)

res1 = T^100;
res1(20,1)
