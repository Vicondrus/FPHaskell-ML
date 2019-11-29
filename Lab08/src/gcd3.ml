type vect = int * int; 
fun gcd3 ((m,n):vect) = if m = 0 then n 
                        else gcd3 (n mod m, m);
