fib 0 = 1
fib 1 = 2
fib x = fibMemo (x - 2) + fibMemo (x - 1)

fibMemo = (map fib [0..] !!)

main = print $ sum $ filter even $ takeWhile (<=4000000) $ map fib [1..]