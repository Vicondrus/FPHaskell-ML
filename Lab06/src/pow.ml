infix 9 **; 

fun m ** n = if n=0 then 1 
             else if (n mod 2)=0 then m**(n div 2) * m**(n div 2)
                  else m * m**(n div 2) * m**(n div 2);               
