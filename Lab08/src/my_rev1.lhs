\begin{code} 
my_rev1 xs  = my_rev1acc xs []
  where 
    my_rev1acc [] ys = ys 
    my_rev1acc (x:xs) ys = my_rev1acc xs (x:ys)      
\end{code}
