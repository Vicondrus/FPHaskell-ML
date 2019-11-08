fun sum (n,i,s) = if i <= n then sum1 (n,i,s+i) 
                  else (n,i,s)
and sum1(n,i,s) = sum (n,i+1,s);
