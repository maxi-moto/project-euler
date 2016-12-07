{-
 - There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 - Find the product abc.
 -
 - usage for problem 9
 - pythagTriplet [ (a, b, c) | c <- [150..500], b <- [150..c], a <- [150..b],\
 - a + b + c = 1000, a^2 + b^2 = c^2 ]
 -}

pythagTriplet :: [(Int, Int, Int)] -> [Int]
pythagTriplet [] = [];
pythagTriplet triplets = triplet : pythagTriplet (tail triplets)
  where triplet = let (a, b, c) = head triplets in a * b * c
