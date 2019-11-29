exception Div0 of string; 
fun mymod a b = if b = 0 
                then raise Div0 ("Divisor 0")
                else a mod b; 
fun m2 a b = mymod a b 
             handle Div0 ("Divisor 0") => ~1
