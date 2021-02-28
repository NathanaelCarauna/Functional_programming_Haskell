produtoEscalar :: Num a => [a] -> [a] -> a
produtoEscalar xs ys = sum [x * y | (x,y) <-zip xs ys]