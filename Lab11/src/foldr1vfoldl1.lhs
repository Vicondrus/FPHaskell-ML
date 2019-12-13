\begin{code}
  threes = 3:threes
  someprimes n = 1 + foldr1 (power) (take n threes) 
\end{code}

