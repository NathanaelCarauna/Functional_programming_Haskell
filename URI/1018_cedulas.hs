import Text.Printf

calcularTroco :: [Integer] -> String -> Integer -> String
calcularTroco [] text _  = text
calcularTroco (nota:notas) text valor = calcularTroco notas (text ++ line) ( valor `rem` nota)
  where line = printf "%d nota(s) de R$ %d,00\n" (valor `div` nota) nota


main :: IO ()
main = do
  valor <- readLn :: IO Integer
  putStr $ show valor ++ calcularTroco [100, 50, 20, 10, 5, 2, 1] "\n" valor