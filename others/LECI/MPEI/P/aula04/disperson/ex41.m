%% a

N = 1e5;
alpha = ['a':'z' 'A':'Z'];
keys = genKeys(N,6, 20, alpha);

%% b 

N = 1e5;
alpha = 'a':'z';
prob = load("prob_pt.txt");
keysp = genKeys(N,6, 20, alpha, prob);

%% functions

function keys = genKeys(N, iMin, iMax, chars, prob)
    keys = {};
    
    for n = 1 : N
        word = '';
        size=randi([iMin, iMax]);
        for i = 1 : size
            switch nargin
                case 4
                    word = [word chars(randi([1 length(chars)]))];
                case 5
                    word = [word discrete_rnd(chars, prob)];
            end
                    
        end
        keys(n) = {word};
    end         
end


function state = discrete_rnd(states, probVector)
     U=rand();
     i = 1 + sum(U > cumsum(probVector));
     state= states(i);
end