\begin{code}
sumTree Empty        = 0
sumTree (Leaf v)     = v
sumTree (Node l v r) = sumTree l + v+ sumTree r
\end{code}		       
