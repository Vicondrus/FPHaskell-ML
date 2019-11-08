\begin{code}
f x = let 
         doubleof z = 2 * z
         ten = 10
         (a,b) = x
      in 
         doubleof(ten * (a + b))       
\end{code}
