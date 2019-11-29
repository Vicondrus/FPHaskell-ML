exception DivByZero; 

fun mymod a b = if b = 0 then raise DivByZero
                              else a mod b;  
		 
fun m1 a b = mymod a b handle DivByZero => ~1
