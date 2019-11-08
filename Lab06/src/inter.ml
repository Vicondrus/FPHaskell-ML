fun inter(m,n) = if m > n then [] 
                 else m::inter (m+1,n);
