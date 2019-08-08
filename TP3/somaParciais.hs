somaParciais :: [Int] -> [Int]
somaParciais [] = []
somaParciais (x:xs) = somaParciaisAux x : somaParciais xs

somaParciaisAux :: Int -> Int
somaParciaisAux 0 = 0
somaParciaisAux m =  (m) + somaParciaisAux (m-1)