distintos :: [Int] -> Bool
distintos [] = False
distintos xs = comparaAmbos [] xs

comparaAmbos :: [Int] -> [Int] -> Bool
comparaAmbos xs [] = True
comparaAmbos xs (y:ys)
  |distinto1 y xs == True   = comparaAmbos ([y]++xs) ys
  |otherwise                = False
  
distinto1 :: Int -> [Int] -> Bool
distinto1 n [] = True
distinto1 n (x:xs)
  |n /= x    = distinto1 n xs
  |otherwise = False