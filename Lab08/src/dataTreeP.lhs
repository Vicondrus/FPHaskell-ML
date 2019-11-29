\begin{code}
data TreeP a = EmptyP
             | LeafP a
             | NodeP (TreeP a) a (TreeP a)
\end{code}		       