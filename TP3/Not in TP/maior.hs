maior :: [Int] -> Int
maior[] = 0
maior (x:xs) = maiorAux x xs


maiorAux :: Int -> [Int] -> Int
maiorAux m [] = m
maiorAux m (x:xs)
   | x > m = maiorAux x xs
   | otherwise = maiorAux m xs