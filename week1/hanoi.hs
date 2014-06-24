type Peg = String 
type Move = (Peg, Peg)

--hanoi :: Integer -> Peg -> Peg -> [Move]

hanoi n "A" "B" = (hanoi (n-1) "A" "C") ++ [("A", "B")] ++ (hanoi (n-1) "B" "C")
hanoi n "A" "C" = (hanoi (n-1) "A" "B") ++ [("A" "C")] ++ (hanoi(n-1) "C" "B")
hanoi n "B" "A" = (hanoi (n-1) "B" "C") ++ [("B" "A")] ++ (hanoi (n-1) "C" "A")
hanoi n "B" "C" = (hanoi (n-1) "B" "A") ++ [("B" "C")] ++ (hanoi (n-1) "A" "C")
hanoi n "C" "B" = (hanoi (n-1) "C" "A") ++ [("C" "B")] ++ (hanoi (n-1) "A" "B")
hanoi n "C" "A" = (hanoi (n-1) "C" "B") ++ [("C" "A")] ++ (hanoi (n-1) "B" "A")
hanoi 0 _ _ = []
