\begin{code}
qs []     = []
qs (x:xs) = qs smalls ++ [x] ++ qs bigs
              where 
                smalls = [s | s <- xs, s<=x] 
                bigs =  [b | b <- xs, b>x]
\end{code} 
