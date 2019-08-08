somaImpares :: [Int] -> Int
somaImpares [] = 0
somaImpares xs = somaImparesAux 0 xs


somaImparesAux :: Int -> [Int] -> Int
somaImparesAux m [] = m
somaImparesAux m (x:xs)
	| x `mod` 2 /= 0   = somaImparesAux (m+x) xs
	| otherwise        = somaImparesAux m xs
