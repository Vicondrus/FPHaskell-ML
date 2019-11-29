exception DivByZero; 
fun divRE a b = if (b >= 0.0) andalso (b <= 0.0)
                then raise DivByZero
                else a/b; 
