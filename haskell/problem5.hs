{-
 - What is the smallest positive number that is divisible by all the numbers
 - from 1 to 20?
 -}

lcms :: [Integer] -> Integer
lcms (x:[]) = x
lcms (x:y:[]) = lcm x y
lcms (x:tail) = lcm x (lcms tail)
