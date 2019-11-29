\begin{code}
my_filter :: (a -> Bool) -> [a] -> [a]
my_filter p []     = []
my_filter p (x:xs) =  if p x 
                      then x:my_filter p xs
                      else my_filter p xs
\end{code}                      