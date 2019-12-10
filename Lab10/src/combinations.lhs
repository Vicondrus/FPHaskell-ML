\begin{code}
combs _ [] = [[]]
combs 0 _ = [[]]
combs k (x:xs) = x_start ++ others
                where 
                x_start = [ x:rest | rest <- combs (k-1) xs]
                others = if k<=length xs then combs k xs else []

combinationsAux 0 x = [[]]
combinationsAux n x = (combinationsAux (n-1) x) ++ (combs n x)

combinations x = combinationsAux (length x) x
\end{code}