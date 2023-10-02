% A Pythagorean triplet is a set of three natural numbers, a b c, for which,
%  a^2 + b^2 = c^2
% For example,
%  3^2 + 4^2 = 9 + 16 = 5^2 = 25.
% There exists exactly one Pythagorean triplet for which a + b + c = N (the input).
% Find the product abc.

function y = euler009(x)
    abc = [];
    done = 0;
    
    % Go through all combos of A and B
    for a = 1:x
        % b must be greater than A
        for b = a+1:x
            c = x - a - b;
            % Check if its a pythagorean triple
            % If it is, we are done
            if (c^2 == a^2 + b^2)
               abc = [a, b, c];
               done = 1;
               break;
            end
        end
        if (done) 
            break;
        end
    end

    % Get the product
    y = prod(abc)
end