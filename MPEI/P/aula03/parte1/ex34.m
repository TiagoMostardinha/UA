clear;clc;
% Codigo 4a

p = 0.4;
q = 0.6;

T = [p^2        0       0   q^2    ;
    (1-p)^2     0       0   q*(1-q);
    p*(1-p)     0       0   q*(1-q);
    p*(1-p)     1       1   (1-q)^2;
    ]

% Codigo 4b

x0 = [1;0;0;0];

n = [5 10 100 200];

for i = 1 : 4
    res(:,i) = T^n(1,i) * x0
end

% Codigo 4c

%u = M\x
%Tu = u
%(T -I)u = 0

%M= [
%       T- eye(length(T))   ;
%       ones(1,length(T))   ;
%   ]

%x = [zeros(length(T),1) ;;

M = [
       T - eye(length(T))   ;
       ones(1,length(T))   
    ]

x = [zeros(length(T),1) ; 1];

u = M\x