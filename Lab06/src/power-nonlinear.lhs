\begin{code}
module Newpower (power)
 where
  power m n = if (m==0 && n==0) then error "0 at 0 not defined"
              else if (m==0) then 0
                   else if (n==0) then 1
                        else if (even n) then power m (n `div` 2) * power m (n `div` 2)
                             else m * power m (n `div` 2) * power m (n `div` 2)
\end{code}
