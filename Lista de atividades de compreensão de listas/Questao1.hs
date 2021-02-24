-- 1) Usando compreensão de listas, forneça uma expressão que calcula a
-- soma 1² +2²+...+100² dos quadrados dos primeiros 100 números inteiros.

somaQuadradosDe1a100 :: Int
somaQuadradosDe1a100 = foldr (+) 0 [x^2 | x<- [1..100]]
