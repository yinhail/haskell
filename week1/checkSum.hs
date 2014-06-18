addOne n 
	| n < 0 = addOne (- n)
	| (n < 10 && n >= 0) = n
	| otherwise = (mod n 10) + addOne (div n 10)

add n
	| n == [] = 0
	| otherwise = (addOne (head n)) + (add (tail n))
	

