type Peg = Int 
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]

--the sequence of the following two lines are important
hanoi 0 from to using = []
hanoi n from to using = hanoi (n-1) from using to ++ [(from, to)] ++ hanoi (n-1) using to from
