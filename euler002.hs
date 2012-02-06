fib 0 = 1
fib 1 = 2
fib x = fib (x - 2) + fib (x - 1)

main = print $ sum $ filter even $ takeWhile (<=4000000) $ map fib [1..]