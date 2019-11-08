\begin{code} 
my_take 0 _      = []
my_take k []     = [] 
my_take k (x:xs) = x:my_take (k-1) xs
\end{code} 
