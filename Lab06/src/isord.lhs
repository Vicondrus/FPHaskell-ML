\begin{code}
isord [] _            = True
isord [x] _           = True
isord (x:y:ys) ordrel = 
  (ordrel x y) && isord (y:ys) ordrel
\end{code}