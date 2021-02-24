--2) Suponha que um plano de coordenadas de tamanho m x n é dado
--  pela lista de todos os pares (x,y) de inteiros tal que 0  y  n e 0 y n.
--  Usando compreensão de listas, defina a função grid :: Int -> Int -> [(Int,Int)]
--  que retorna o plano de coordenadas de um dado tamanho. Por exemplo:
-- > grid 1 2
-- [(0,0), (0,1), (0,2), (1,0), (1,1), (1,2)]

grid :: (Num a, Num b, Enum a, Enum b) => a -> b -> [(a, b)]
grid m' n' = [(m,n) | m <-[0 .. m'], n <- [0 .. n']]