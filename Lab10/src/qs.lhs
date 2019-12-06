\begin{code}
import Data.Char

ltstr "" "" = True
lstr "" y = True
lstr x "" = False
lstr (x:xs) (y:ys) = if ((ord x) < (ord y)) then True
                    else if ((ord x) > (ord y)) then False
                    else lstr xs ys

qs [] crit = []
qs (x:xs) crit = (qs smalls crit)++[x]++(qs bigs crit)
                where 
                smalls = [y | y<-xs, (crit y x)]
                bigs = [y | y<-xs, (crit x y)]
\end{code}