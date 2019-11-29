\begin{code}
subset :: Ord a => Set a -> Set a -> Bool
subset [] _   = True
subset _ []   = False
subset (a:s) (b:t) 
  | a == b    = subset s t
  | a < b     = False
  | otherwise = subset (a:s) t
\end{code}
