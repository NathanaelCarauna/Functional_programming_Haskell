
auxiliar qtd = do
    lista <- sequence [ readLn :: IO Int | _ <- [1..qtd] ]
    return (sum lista)

somador :: IO ()
somador = do
    putStrLn "Quantos números? "
    qtd <- readLn :: IO Int
    total <- auxiliar qtd
    putStrLn $"O total é " ++ show total
