posicao :: Int -> [Int] -> Int
posicao s [] = 0
posicao s xs = posicaoAux s 1 xs

posicaoAux :: Int -> Int -> [Int] -> Int
posicaoAux s i [] = 0
posicaoAux s i (x:xs)
 | s == x     = i
 | otherwise  = posicaoAux s (i+1) xs