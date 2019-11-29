\begin{code}
eqset :: Ord a => Set a -> Set a -> Bool
eqset xs ys = if subset xs ys then subset ys xs 
              else False
\end{code}
