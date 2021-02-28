-- 7) Usando a função merge, defina a função mergesort :: Ord a => [a] -> [a] 
-- que implementa o algoritmo de ordenação merge sort, que por sua vez considera 
-- uma lista vazia e uma lista com apenas um elemento como listas ordenadas, e que 
-- qualquer outraa lista é ordenada a partir da união de duas listas que resultaram da 
-- ordenação das suas metades separadamente. 
-- Dica: primeiro implemente a função metades :: [a] -> ([a],[a]) 
-- que separa uma lista em duas partes cujos comprimentos são iguais ou no máximo diferem em uma unidade.

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    |x < y = x : merge xs (y:ys)
    |otherwise = y : merge (x:xs) ys

metades :: [a] -> ([a], [a])
metades xs = splitAt (length xs `div` 2) xs

mergesort :: Ord a => [a] -> [a]
mergesort []  = []
mergesort [x] = [x]
mergesort xs = merge (mergesort metade1) (mergesort metade2) 
    where (metade1, metade2) = metades xs
