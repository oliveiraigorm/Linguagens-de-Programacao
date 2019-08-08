removerFim :: Int -> [Int] -> [Int]
removerFim n xs
  |n < 0     = xs 
  |otherwise = (removerXElementos 0 (vaiAteOFim 0 xs) ((vaiAteOFim 0 xs)-n) [] xs)


vaiAteOFim :: Int -> [Int] -> Int
vaiAteOFim n [] = n
vaiAteOFim n (x:xs) = vaiAteOFim (n+1) xs


removerXElementos :: Int -> Int -> Int -> [Int] -> [Int] ->[Int]
removerXElementos index length critical newList [] = newList
removerXElementos index length critical newList (x:oldList)
  |index >= length  = newList
  |index < critical = removerXElementos (index+1) length critical (newList++[x]) oldList
  |otherwise        = newList

