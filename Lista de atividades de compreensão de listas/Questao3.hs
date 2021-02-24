--3) Usando compreensão de listas e a função grid definida na questão anterior, 
-- defina uma função quadrado :: Int -> [(Int,Int)] que retorna um plano de 
-- coordenadas quadrado de tamanho n, excluindo a diagonal principal (0,0) a (n,n). 
-- Por exemplo:

-- > quadrado 2
-- [(0,1), (0,2), (1,0), (1,2), (2,0), (2,1)]

grid :: (Num a, Num b, Enum a, Enum b) => a -> b -> [(a, b)]
grid m' n' = [(m, n) | m <-[0 .. m'], n <- [0 .. n']]

quadrado :: (Num b, Enum b, Eq b) => b -> [(b, b)]
quadrado n' = [(m, n) | m <-[0 .. n'], n <- [0 .. n'], m/=n]