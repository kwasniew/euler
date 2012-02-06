palindrome x = show x == (reverse . show) x

main = print $ maximum $ filter palindrome [xs*ys | xs <- [100..999], ys <- [100..999]] 
		  
		  