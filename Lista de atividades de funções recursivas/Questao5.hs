-- 5)Defina as funções abaixo usando recursão:
-- a) Decidir se todos os números em uma lista são True:
-- and :: [Bool] -> Bool
-- b) Concatenar uma lista de listas:
-- concat :: [[a]] -> [a]
-- c) Produzir uma lista com n elementos idênticos:
-- replicate :: Int -> a -> [a]
-- d) Selecionar o n-ésimo elemento em uma lista:
-- (!!) :: [a] -> Int -> a
-- e) Decidir se um valor está presente em uma lista:
-- elem :: Eq a => a -> [a] -> Bool

--a)
myAnd :: [Bool] -> Bool 
myAnd [] = True 
myAnd (x:xs) = x && myAnd xs

--b)
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ tail x ++ myConcat xs

--c)
myReplicate :: (Eq t, Num t) => t -> a -> [a]
myReplicate n v
    |n == 0 = []
    |otherwise = v : myReplicate(n-1) v

--d)
(!!!) :: (Eq t, Num t) => [p] -> t -> p
(!!!) (x:xs) n
    |n == 0 = x
    |otherwise = xs !!! (n-1)

--e)
myElem :: Eq t => t -> [t] -> Bool
myElem v (x:xs)
    |null xs = False
    |v == x = True 
    |otherwise = myElem v xs
