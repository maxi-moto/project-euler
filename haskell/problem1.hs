mult3and5 :: Int -> Int
mult3and5 number
  | number == 0 = 0
  | (number `mod` 3) == 0 = number + (mult3and5 (number - 1))
  | (number `mod` 5) == 0 = number + (mult3and5 (number - 1))
  | otherwise = mult3and5 (number - 1)
