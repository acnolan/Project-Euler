% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number being input, input might be uint64 for large numbers, out must be double precision?

function y = euler003(x)
    % Starting with 2 (the smallest prime)
    % Check if x is a factor
    while mod(x, 2) == 0
        y = 2;
        x = x / 2;
    end;
    
    % Besides 2 all other primes are odd
    % Continue factoring x    
    i = 3;
    while i^2 < x                
        % Factor x
        while mod(x , i) == 0
            x = x / i;
        end
        
        % Increment by 2, all primes 3 and up are odd
        i = i + 2;
    end
    
    % Our final factor should be the biggest one
    y = x;
end
