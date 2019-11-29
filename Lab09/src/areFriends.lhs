\begin{code}

areFriends x y = (sum [t | t<-[1..x], x `mod` t==0]) * y == x * (sum [t | t<-[1..y], y `mod` t==0])

\end{code}