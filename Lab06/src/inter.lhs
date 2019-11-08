\begin{code}
myinser x [] _       = [x]
myinser x (y:ys) orel  =
  if (orel x y) then x:y:ys
  else y:(myinser x ys orel)	 

sortins [] _             = []
sortins (x:xs) orel        =
  myinser x (sortins xs orel) orel
\end{code}

To call: sortins [3,4,2,5,1] (\ x y -> x>y)
