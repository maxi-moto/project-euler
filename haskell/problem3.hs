{-
 - Project Euler Problem 3
 - What is the largest prime factor of the number 600851475143?
 -
 -}

divides :: (Integral a) => a -> a -> Bool
divides x y = x `mod` y == 0

ld :: Integer -> Integer
ld n = ldf 2 n

ldf :: Integer -> Integer -> Integer
ldf k n
  | n `divides` k = k
  | k * 2 > n = n
  | otherwise = ldf (k + 1) n

primeFactors :: Integer -> [Integer]
primeFactors number
  | number == 1 = []
  | otherwise = p : primeFactors (number `div` p)
  where p = ld number

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor number = last (primeFactors number)
