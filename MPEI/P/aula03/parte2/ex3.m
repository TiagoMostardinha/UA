%% a
%    a   b   c   d   e   f
H = [0   1/2 1/2 0   1/4 0
     1   0   0   0   1/4 0
     0   0   0   1   1/4 0
     0   0   1/2 0   1/4 1
     0   0   0   0   0   0
     0   1/2 0   0   0   0];

b = 0.85;
A = b*H + (1-b)*(1/6*ones(6));

r = [1/6 ;1/6; 1/6; 1/6; 1/6; 1/6];
for i = 1:100
    r = A*r;
end

r


%% b fazer depos (A -I) u = 0