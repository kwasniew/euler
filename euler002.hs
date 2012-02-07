fib 1 = 1
fib 2 = 1
fib x = fibMemo (x - 2) + fibMemo (x - 1)

fibMemo = (map fib [0..] !!)

main = print $ sum $ filter even $ takeWhile (<=4000000) $ map fib [1..]