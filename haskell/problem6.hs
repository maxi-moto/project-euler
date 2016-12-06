{-
 - ind the difference between the sum of the squares of the first one hundred
 - natural numbers and the square of the sum.
 -}

sumSquareDifference :: [Integer] -> Integer
sumSquareDifference list = squareOfSum list - sumOfSquare list

squareOfSum :: [Integer] -> Integer
squareOfSum list = (sum list) ^ 2

sumOfSquare :: [Integer] -> Integer
sumOfSquare list = sum (map (^ 2) list)
