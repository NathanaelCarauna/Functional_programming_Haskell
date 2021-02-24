import Text.Printf

toDouble :: [Char] -> Double
toDouble n = read n :: Double

toInt :: [Char] -> Int
toInt n = read n :: Int

salario :: Double -> Double ->Double
salario h v = h * v

main :: IO()
main = do
    funcionario <- getLine
    horas <- getLine
    valor <- getLine
    putStrLn ("NUMBER = " ++ show (toInt funcionario))
    putStrLn ( printf "SALARY = U$ %.2f" (salario (toDouble horas) (toDouble valor)))