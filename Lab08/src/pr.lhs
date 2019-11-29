\begin{code}
pr [] = [[]]
pr xs = [ a:p | a <- xs ,  p <- pr (elim a xs)]
\end{code}