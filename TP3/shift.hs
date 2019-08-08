shift :: Int -> [Int] -> [Int]
shift 0 xs = xs
shift n (x:xs) = shift (n-1) (xs++[x])
