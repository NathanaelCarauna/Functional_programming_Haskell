-- 8) Implemente recursivamente funções que:
    -- a) calcule a soma de uma lista de inteiros;
    -- b) obtenha um dado número de elementos do início de uma lista;
    -- c) selecione o último elemento de uma lista não-vazia.

--a)
mySum :: (Eq a, Num a) => [a] -> a
mySum (x:xs)
    |(x:xs) == [] = 0
    |xs == [x] = x
    |otherwise = x + sum xs

--b)
myTake :: (Eq t, Num t) => t -> [a] -> [a]
myTake n (x:xs)
    | n == 0 = []
    | otherwise = x : myTake (n-1) xs

--c)
myLast (x:xs)
    |xs == [x] = x
    |otherwise = myLast xs
