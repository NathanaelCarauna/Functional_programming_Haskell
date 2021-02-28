-- 6) Definir a função recursiva merge :: Ord a => [a] -> [a] -> [a] 
-- que une duas listas ordenadas em uma lista ordenada. Exemplo:
-- > merge [2,5,6] [1,3,4]
-- [1,2,3,4,5,6]



merge' :: Ord a => [a] -> [a] -> [a]
merge' [] ys = ys
merge' xs [] = xs
merge' (x:xs) (y:ys)
    |x < y = x : merge' xs (y:ys)
    |otherwise = y : merge' (x:xs) ys
