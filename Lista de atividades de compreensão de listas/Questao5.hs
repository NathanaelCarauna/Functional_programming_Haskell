-- 5) Uma tupla (x,y,z)de inteiros positivos é Pitagoreana 
-- satisfaz a equação x² + y² = z². Usando compreensão de listas 
-- com três geradores, defina a função pitag :: Int -> [(Int, Int, Int)] 
-- que retorna uma lista de todas as tuplas que satisfazem a condição 
-- estabelecida e cujos componentes são menores ou iguais a um dado limite. 
-- Exemplo:
-- > pitag 10
-- [(3,4,5), (4,3,5), (6,8,10), (8,6,10)]

pitag :: (Num c, Enum c, Eq c) => c -> [(c, c, c)]
pitag x = [(a,b,c)| a <- [1.. x], b <- [1.. x], c <- [1..x], a*a + b*b == c*c]