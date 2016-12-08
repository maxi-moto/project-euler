{-
 - Find the sum of all the primes below two million.
 -}

divides :: Integer -> Integer -> Bool
divides a b = b `mod` a == 0

isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromIntegral

isPrime :: Integer -> Bool
isPrime i = null [ x | x <- [2..isqrt i], x `divides` i ]

main :: IO ()
main = print $ sum [x | x <- [11..2000000], isPrime x] + 17
