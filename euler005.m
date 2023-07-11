% 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
% What is the smallest positive number that is evenly divisible by all of the numbers from 1 to input number?
function y = euler005(x)
    % Unique Numbers
    factors = [];

    % Loop through numbers from x down to 1
    for i = x:-1:1
        % We only need to consider the larger numbers, not their factors
        % If x is 20, we can use 20 and skip 10, 5, 4, and 2
        addToFactors = true;
        for j = factors
            if mod(j, i) == 0
                addToFactors = false;
                break;
            end
        end
        
        if addToFactors
            factors = [factors i];
        end
    end
    
    % Find the Least Common Multiple of the remaining numbers
    y = x;
    for i = factors
       y = lcm(i, y); 
    end
end