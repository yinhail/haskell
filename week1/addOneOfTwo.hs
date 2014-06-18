addOneOfTwo x  = [2 * (head x)] ++ (tail x) 
doubleEachTwo x 
	| x == [] = []
	| otherwise = addOneOfTwo (take 2 x) ++ doubleEachTwo (drop 2 x)
