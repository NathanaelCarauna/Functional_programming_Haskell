-- 01)Defina uma função, dada uma lista numérica, que retorne uma tupla-2, 
-- tal que contenha o maior valor da lista e sua posição nesta lista.
-- Exemplo: maior [11,51,2,3,4]
-- Saída: (51,1)

import Data.List ( sort )

-- Resposta 1
geraListaTuplas :: (Num b, Enum b) => [a] -> [(a, b)]
geraListaTuplas lista = zip lista [0 .. ]

maior :: (Ord a, Ord b, Num b, Enum b) => [a] -> (a, b)
maior lista = last $ sort $geraListaTuplas lista

-- Resposta 2
maiorAB (a, b) (c,d) 
    |a > c = (a,b)
    |otherwise = (c,d)

maior2 lista = foldr maiorAB (head listaTuplas) listaTuplas
                where
                    listaTuplas = geraListaTuplas lista
