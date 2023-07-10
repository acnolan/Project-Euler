% A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
% Find the largest palindrome made from the product of numbers less than or equal to the input number.
function y = euler004(x)
    % If no numbers are palindromes at least 0 probably is
    y = 0;

    % Two loops to multiply smaller numbers
    % The largest one will be made of the largest numbers so we decrement
    % Once we find a large number we can break.
    for i = x:-1:1
        % Exit early if nothing in this loop will be a bigger palindrome
        if i < y / x
            break;
        end
        
        % Start inner loop at i, we would have covered bigger cases already
        for j = x:-1:1
            test = i * j;
            if string(test) == reverse(string(test))
                if test > y
                    y = test;
                    break;
                end
            end
        end
    end
end