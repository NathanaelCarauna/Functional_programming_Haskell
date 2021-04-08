auxiliar :: (Eq t, Num t) => t -> Int -> IO Int
auxiliar 0 total = return total
auxiliar qtd total = do
    valor <- readLn :: IO Int
    auxiliar (qtd-1) (total + valor)


somador :: IO ()
somador = do
    qtd <- readLn :: IO Int
    total <- auxiliar qtd 0
    putStrLn $"O total é " ++ show total

main :: IO()
main = do
    putStrLn "Quantos números? "
    somador
