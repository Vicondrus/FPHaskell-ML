\begin{code}
type Bignumber = [Int] 
prod :: Bignumber -> Int -> Bignumber
prod m i =
   prod1 m 0
     where 
        prod1 [] 0 = []
        prod1 [] c = let cm = c `mod` 10 
                         cd = c `div` 10  
                     in cm : prod1 [] cd	     
        prod1 (d:n) c = let k = d * i + c
                            km = k `mod` 10
                            kd = k `div` 10
                        in km : prod1 n kd
\end{code}
