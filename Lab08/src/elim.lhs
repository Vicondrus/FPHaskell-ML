\begin{code}
elim _ [] = [] 
elim e (x:xs) | e == x 	  = elim e xs
              | otherwise = x:elim e xs 
\end{code}	      