clear;clc;
% Codigo 5a

%       s   n   c
T = [
        0.7 0.2 0.1;
        0.2 0.3 0.5;
        0.3 0.3 0.4
    ]';

% Codigo 5b

x0 = [1;0;0];

n = [1 2];

for i = 1: length(n)
    res(:,i) = T^n(1,i) * x0;
end

fprintf("p(2nd and 3rd day sun)=%f\n",T(1,1)^2)

% Codigo 5c
x1 = [1;0;0];
x2 = T * x1;

x2linha = [0.7;0.2;0];

x2linha = x2linha / sum(x2linha);

x3 = T * x2linha;
fprintf("p(2nd and 3rd day not rain)=%f\n",sum((x2(1:2)) * sum(x3(1:2))));

%Codigo 5d
for i=1:30
    res(:,i) = T^i * x0;
end
fprintf("D")
res1 = [x0 res];
fprintf("\naverage sun days: %f\n",sum(res1(1,:)))
fprintf("average cloudy days: %f\n",sum(res1(2,:)))
fprintf("average rainy days: %f\n",sum(res1(3,:)))

%Codigo 5e

x0 = [0;0;1];
for i = 1:30
    res(:,i) = T^i * x0;
end

res2 = [x0 res];
fprintf("E")
fprintf("\naverage sun days: %f\n",sum(res2(1,:)))
fprintf("average cloudy days: %f\n",sum(res2(2,:)))
fprintf("average rainy days: %f\n",sum(res2(3,:)))

%Codigo 5f
%res1 1o dia de sol
fprintf("F1")
fprintf("\naverage sun days: %f\n",sum(res1(1,:)) * 0.1)
fprintf("average cloudy days: %f\n",sum(res1(2,:)) * 0.3)
fprintf("average rainy days: %f\n",sum(res1(3,:)) * 0.5)

%res2 1o dia de chuva
fprintf("F2")
fprintf("\naverage sun days: %f\n",sum(res(1,:)) * 0.1)
fprintf("average cloudy days: %f\n",sum(res(2,:)) * 0.3)
fprintf("average rainy days: %f\n",sum(res(3,:)) * 0.5)

