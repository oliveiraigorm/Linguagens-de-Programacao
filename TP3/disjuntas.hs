disjuntas :: [Int]->[Int]->Bool
disjuntas [] m = True
disjuntas n [] = True
disjuntas (x:xs) y 
   | disjuntasAux x y == True = disjuntas xs y
   | otherwise = False
   
disjuntasAux :: Int -> [Int]->Bool
disjuntasAux _ [] = True
disjuntasAux m (x:xs)
   | m == x = False
   | otherwise = disjuntasAux m xs