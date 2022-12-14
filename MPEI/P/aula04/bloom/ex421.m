% n = 8000; k = 3; U1 = 1000 palavras
clear;clc;

n = 8000;
m = 1000;
k = 3;

fid = fopen("wordlist-preao-20201103.txt","r");
dic = textscan(fid,"%s");
fclose(fid);
dic = dic{1,1};

BF = init(n);

% 1 & 2
for i=1:m
    BF = insert(dic{i},BF,k);
end

contador = 0;

for i=1:m
    check = check_elem(dic{i},BF,k);
    if ~check
        contador = contador + 1;
    end
end

fprintf('No. false negativos = %d\n', contador);

% 3
m2 = 10000;

contador = 0;
for i=m+1:m+m2
    check = check_elem(dic{i},BF,k);
    if check
        contador = contador +1;
    end
end

fprintf('Pec. falsos positivos = %.2f%%\n', 100*contador/m2);
fprintf('Pec. falsos positivos teórica = %.2f%%\n', 100*(1-exp(-k*m/n))^k);

%%
function BF = init(n)
    BF = false(1,n);
end

function BF = insert(elem,BF,k)
    n = length(BF);
    for i=1:k
        elem = [elem num2str(i)];
        h = DJB31MA(elem,127);
        h = mod(h,n) + 1;
        BF(h) = true;
    end
end

function BF = check_elem(elem,BF,k)
    n = length(BF);
    check = true;
    for i=1:k
        elem = [elem num2str(i)];
        h = DJB31MA(elem,127);
        h = mod(h,n);
        if ~BF(h)
            check = false;
            break;
        end
    end
end
  
