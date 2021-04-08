interseccao :: Eq a => [a] -> [a] -> [a]
interseccao xs ys = [x | x<- xs, y <- ys, x == y]