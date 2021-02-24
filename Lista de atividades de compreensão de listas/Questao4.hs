-- 4) De maneira similar à função length, mostre como a função
-- replicate :: Int -> a -> [a] que produz uma lista de elementos 
-- idênticos pode ser definida usando compreensão de listas. Exemplo:
-- > replicate 3 True
-- [True, True, True]

replicate' :: (Num t, Enum t) => t -> a -> [a]
replicate' qtd valor = [ valor | _ <- [1 .. qtd]]