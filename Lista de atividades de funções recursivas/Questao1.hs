-- 1) Como a versão recursiva da função fatorial se comporta se 
-- dermos a ela como argumento um número negativo. Modifique a 
-- implementação clássica para não permitir números negativos 
-- adicionando uma guarda ao passo recursivo.

-- Reposta: Se passar um argumento negativo, entra num loop infinito.

fatorial :: (Ord p, Num p) => p -> p
fatorial n 
    | n <= 0 = 1
    | otherwise = n * fatorial (n - 1)