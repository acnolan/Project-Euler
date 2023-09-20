% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
% What is the Nth prime number?
% (For some reason we were not allowed to use IF statements in the answer)

function y = euler007(n)
    % Simple look up for small n
    smallPrimes = [2, 3, 5, 7, 11];
    
    % Does not work with small n
    upperBounds = ceil(n * log(n) + n * log(log(n)));
    bigPrimes = sieveOfEratosthenes(upperBounds);
    
    allPrimes = [smallPrimes, bigPrimes(6:end)];
    y = allPrimes(n);
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