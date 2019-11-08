\begin{code}
q []	 = []
q (x:xs) = q [s | s <- xs, s<=x] ++ 
           [x] ++ 
           q [b | b <- xs, b>x]
\end{code} 
