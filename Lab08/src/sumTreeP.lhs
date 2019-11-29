\begin{code}
sumTreeP :: TreeP Integer -> Integer

sumTreeP EmptyP	       = 0
sumTreeP (LeafP v)     = v
sumTreeP (NodeP l v r) = sumTreeP l + v + sumTreeP r
\end{code}		       
