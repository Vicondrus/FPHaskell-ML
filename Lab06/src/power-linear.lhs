\begin{code}
module Newpower (power)
 where
  power m n = if (n==0 && m==0) then error "0 at 0 not defined" 
              else if (m==0) then 0 
                   else if n==0 then 1
                        else m * (power m (n-1))
\end{code}
