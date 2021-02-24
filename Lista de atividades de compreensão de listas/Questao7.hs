-- 7) Mostre que a compreensão de lista [(x,y) | x <- [1,2], y <- [3,4]],
--  com dois geradores, pode ser representada usando duas compreensões de lista,
--  cada uma com apenas um gerador. Dica: Procure usar a função concat. 

listaMeta = [(x,y) | x <- [1,2], y <- [3,4]]
lista1 = [x | x <- [1, 2]]
lista2 = [y | y <- [3, 4]]
listaFinal = lista1 ++ lista2