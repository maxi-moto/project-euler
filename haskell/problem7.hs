{-
 - What is the 100001st prime number?
 -}

divides :: Integer -> Integer -> Bool
divides a b = b `mod` a == 0

isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromIntegral

isPrime :: Integer -> Bool
isPrime i = null [ x | x <- [2..isqrt i], x `divides` i ]

primeAt :: Integer -> Integer
primeAt index = primeIndex index 2 1

primeIndex :: Integer -> Integer -> Integer -> Integer
primeIndex index curValue curIndex
  | curIndex == index && isPrime curValue = curValue
  | isPrime curValue = primeIndex index (curValue + 1) (curIndex + 1)
  | otherwise = primeIndex index (curValue + 1) curIndex
