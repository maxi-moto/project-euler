{-
 - Project Euler Problem 2
 - By considering the terms in the Fibonacci sequence whose values do not exceed
 - four million, find the sum of the even valued terms.
 -}

evenFib :: Integer -> Integer -> Integer -> Integer -> Integer
evenFib current prev sum limit
  | result > limit = sum
  | even result = evenFib (current + prev) current (result + sum) limit
  | otherwise = evenFib (current + prev) current sum limit
  where result = fastFib 2 current prev

fastFib :: Integer -> Integer -> Integer -> Integer
fastFib index current prev
  | index == 0 = prev
  | index == 1 = current
  | otherwise = fastFib (index - 1) (current + prev) current

