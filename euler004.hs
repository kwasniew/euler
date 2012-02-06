palindrome x = (show x) == reverse (show x)
products = [xs*ys | xs <- [100..999], ys <- [100..999]]

main = print $ maximum $ filter palindrome products