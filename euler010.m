% The sum of the primes less than or equal to 10 is 2 + 3 + 5 + 7 = 17.
% Find the sum of all the primes less than or equal to the input, N.

function y = euler010(n)
    % Looks like this will be very similar to problem 7!
    % Simple look up for small n
    smallPrimes = [2, 3, 5, 7, 11];
    
    % Does not work with small n
    bigPrimes = sieveOfEratosthenes(n);
    
    allPrimes = [smallPrimes, bigPrimes(6:end)];
    y = sum(allPrimes(allPrimes <= n));
end

function primes = sieveOfEratosthenes(upperBounds)
    % Create an array of booleans for all numbers up to the limit
    sieve = true(1, upperBounds);
    sieve(1) = false; % 1 is not prime
    p = 2;
    while p^2 <= upperBounds
        sieve(p^2:p:end) = sieve(p^2:p:end) & ~sieve(p);
        p = p + 1;
    end
    primes = find(sieve);
end