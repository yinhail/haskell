toDigit :: Integer -> [Integer]
toDigit n
	| (div n 10) == 0 = [n]
	| otherwise = (mod n 10) : toDigit (div n 10) 
