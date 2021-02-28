-- 2) Defina a função recursiva somar :: Int -> Int que retorna a soma dos inteiros não-negativos 
-- a partir de um valor até zero. Por exemplo, somar 3 deve retornar 3+2+1+0 = 6.

somar n
    | n == 0 = 0
    | otherwise = n + somar (n-1)