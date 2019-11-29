\begin{code}
pr [] = [[]]
pr xs = [ a:p | a <- xs ,  p <- pr (elim a xs)]

elim _ [] = [] 
elim e (x:xs) | e == x 	  = elim e xs
              | otherwise = x:elim e xs 
\end{code}	      