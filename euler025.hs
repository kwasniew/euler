import Data.List

fib 1 = 1
fib 2 = 1
fib x = fibMemo (x - 2) + fibMemo (x - 1)

fibMemo = (map fib [0..] !!)

howManyBefore = length $ takeWhile (\x -> (length $ show x) < 1000) $ map fib [1..]
main = print $ howManyBefore + 1