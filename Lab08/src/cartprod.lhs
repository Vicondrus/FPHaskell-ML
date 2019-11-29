\begin{code}
cartprod :: Set a -> Set b -> [(a,b)] 
cartprod [] ys = [] 
cartprod (x:xs) ys = perx ys
  where
    perx [] = cartprod xs ys
    perx (y:ys) = (x,y):(perx ys)
\end{code}
