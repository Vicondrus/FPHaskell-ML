\begin{code} 
my_drop 0 xs     = xs
my_drop k []     = [] 
my_drop k (x:xs) = my_drop (k-1) xs
\end{code}

