\begin{code}
sudan 0 x y = x + y
sudan m x 0 = x
sudan m x y = sudan (m - 1) (sudan m x (y - 1)) (y + (sudan m x (y - 1)))

matrixSudan n = [(m, x, y, sudan m x y) | m<-[0..n], x<-[0..n], y<-[0..n]]

firstFloorSudan n = take ((n + 1) * (n + 1)) (matrixSudan n)

secondFloorSudan n = take ((n + 1) * (n + 1)) (drop ((n + 1) * (n + 1)) (matrixSudan n))
\end{code}