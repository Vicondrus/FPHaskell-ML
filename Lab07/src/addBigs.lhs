\begin{code}
genN n = if n <= 0 then [] else 0:(genN (n - 1))

addBigsQ [] [] 0 = []
addBigsQ [] [] 1 = [1]
addBigsQ (x:xs) (y:ys) r = z:(addBigsQ xs ys rest1)
                    where 
                    rest1 = (x + y + r) `div` 10 
                    z = (x + y + r) `mod` 10 

addBigs x y = reverse (addBigsQ (reverse ((genN (((length y) - (length x)))) ++ x)) (reverse (genN ((((length x) - (length y)))) ++ y)) 0)
\end{code}