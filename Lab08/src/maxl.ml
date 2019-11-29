fun maxl [x] = x
 | maxl (x::y::ys) = if x>y then maxl(x::ys) 
                     else maxl(y::ys);
