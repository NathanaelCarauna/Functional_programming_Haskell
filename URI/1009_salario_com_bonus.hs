import Text.Printf

toDouble :: [Char] -> Double
toDouble n = read n :: Double

toInt :: [Char] -> Int
toInt n = read n :: Int

total :: Double -> Double -> Double
total salario vendas = salario + (0.15 * vendas)

main :: IO()
main = do
    vendedor <- getLine
    salarioFx <- getLine
    vendasValor <- getLine    
    putStrLn ( printf "TOTAL = R$ %.2f" (total (toDouble salarioFx) (toDouble vendasValor)))