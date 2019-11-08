type vector = int * int; 
fun gcd4 ((m,n):vector, r) = if m = 0 then n 
                             else gcd4 ((n mod m, m), r);
