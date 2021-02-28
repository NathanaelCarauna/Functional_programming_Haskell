-- 8) Redefina a função posicoes usando a função buscar, 
-- disponível em https://emanoelbarreiros.github.io/funcional/haskell-5

buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = buscar x (zip xs [0 ..])
