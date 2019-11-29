\begin{code}
fromTostep :: Int -> Int -> Int -> [Int]
fromTostep a b lim = 
  let
    inc  = b - a
    test = if a < b then (>) else (<)
    fs a | test a lim = []
         | otherwise  = a:fs (a + inc)  
  in
    fs a
\end{code}