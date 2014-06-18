toReverse :: [Integer] -> [Integer]
toReverse n 
	| n /= []  = last n : toReverse (init n)
	| otherwise = []
