substituir :: Int -> Int -> [Int] -> [Int]
substituir m n [] = []
substituir m n (x:xs)
 | m == x    = [n]++substituir m n xs
 | otherwise = [x]++substituir m n xs
