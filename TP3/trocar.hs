trocar :: Int -> [Int]
trocar 0 = []
trocar m
   | div m 100 > 0 = trocar(m - 100) ++ [100] 
   | div m 50 > 0 = trocar(m - 50) ++ [50] 
   | div m 10 > 0 = trocar(m - 10) ++ [10] 
   | div m 5 > 0 = trocar(m - 5) ++ [5] 
   | div m 1 > 0 =  trocar(m - 1) ++ [1] 
   | otherwise = [0]