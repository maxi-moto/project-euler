{-
 - Project Euler Problem 4
 - Find the largest palindrome made from the product of two 3-digit numbers
 -}

reverseInt :: Integer -> Integer
reverseInt = read . reverse . show

intPalindrome :: Integer -> Bool
intPalindrome num = num == reverseInt num

-- pretty slow
-- maximum [x*y | x <- [100..999], y <- [100..999], intPalindrome (x * y)]

