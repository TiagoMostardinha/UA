clear;clc;
% Codigo 5a

%       s   n   c
T = [
        0.7 0.2 0.1;
        0.2 0.3 0.5;
        0.3 0.3 0.4
    ]

% Codigo 5b

x0 = [1;0;0];

n = [1 2];

for i = 1: length(n)
    res(:,i) = T^n(1,i) * x0;
end

fprintf("p(2nd and 3rd day sun)=%f\n",T(1,1)^2)

% Codigo 5c

fprintf("p(2nd and 3rd day not rain)=%f\n",(1 - res(2,1)) * (1-res(2,2)));

%Codigo 5d
for i=1:1:31
    res(:,i) = T^i * x0;
end

fprintf("\naverage sun days: %f\n",sum(res(1,:)))
fprintf("average cloudy days: %f\n",sum(res(2,:)))
fprintf("average rainy days: %f\n",sum(res(3,:)))