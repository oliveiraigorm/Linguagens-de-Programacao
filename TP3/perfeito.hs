perfeito :: Int -> Bool
perfeito n
  |n < 1 = False
  |otherwise = perfeitoAux n 0 (pegaDivisores n (n-1) [])
  
pegaDivisores :: Int -> Int -> [Int] -> [Int]
pegaDivisores x 1 xs = [1]++xs
pegaDivisores x y xs
  |x `mod` y == 0   = pegaDivisores x (y-1) ([y]++xs)
  |otherwise        = pegaDivisores x (y-1) (xs)
  
  
perfeitoAux :: Int -> Int -> [Int] -> Bool
perfeitoAux m n []
  |m == n    = True
  |otherwise = False
perfeitoAux m n (x:xs) = perfeitoAux m (n+x) xs