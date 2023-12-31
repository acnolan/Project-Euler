% The sum of the squares of the first ten natural numbers is,
% 1^2 + 2^2 + ... + 10^2 = 385 The square of the sum of the first ten natural numbers is,
% (1 + 2 + ... + 10)^2 = 55^2 = 3025 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
% Find the difference between the sum of the squares of the first N (where N is the input) natural numbers and the square of the sum.

function y = euler006(x)
    firstXNumbers = 1:x;
    sumOfSquares = sum(firstXNumbers.^2);
    squareOfSum = sum(firstXNumbers)^2;
    y = squareOfSum - sumOfSquares;
end