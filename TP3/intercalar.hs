intercalar :: [Int]->[Int]->[Int]
intercalar [] m = m
intercalar n [] = n
intercalar (x:xs) (y:ys)
   | x <= y = [x] ++ intercalar xs (y:ys)
   | y < x = [y] ++ intercalar (x:xs) ys