N = 1e5

alpha = ['a':'z' 'A':'Z'];

genKeys(N,6,alpha,prob);

%% functions

function keys = genKeys(N,iMin,iMax,chars)
    keys = {};
 
            for n = 1 : N
                word = "";
                size = randi([iMin,iMax]);
                for i = 1 : size
                    switch nargin
                    case 4
                    word = word + chars(randi[1 length(chars)]);
                    case 5
                    end
                end
            end       
end

