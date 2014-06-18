addOneOfTwo x  = [2 * (head x)] ++ (tail x) 
doubleEachTwo x 
	| x == [] = []
	| otherwise = addOneOfTwo (take 2 x) ++ doubleEachTwo (drop 2 x)
addOne n 
	| n < 0 = addOne (- n)
	| (n < 10 && n >= 0) = n
	| otherwise = (mod n 10) + addOne (div n 10)

add :: [Integer] -> Integer
add n
	| n == [] = 0
	| otherwise = (addOne (head n)) + (add (tail n))
	

toDigit :: Integer -> [Integer]
toDigit n
	| (div n 10) == 0 = [n]
	| otherwise = toDigit (div n 10) ++ [(mod n 10)] 
toReverse :: [Integer] -> [Integer]
toReverse n 
	| n /= []  = last n : toReverse (init n)
	| otherwise = []
					
checkSum :: Integer -> Integer
checkSum n = add (doubleEachTwo (toReverse (toDigit n)))
