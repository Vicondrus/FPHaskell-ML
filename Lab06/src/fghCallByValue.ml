infix 9 **; 

fun m ** n = if n=0 then 1 
             else if (n mod 2)=0 then m**(n div 2) * m**(n div 2)
                  else m * m**(n div 2) * m**(n div 2);               


fun g n = 2 ** (10 ** n); (* a difficult to compute function, maybe ackermann *)
fun f n = (2*n, g n); 
fun h (x,y) = x;
