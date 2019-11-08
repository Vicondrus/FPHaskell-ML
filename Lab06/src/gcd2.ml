fun gcd2 (m, n) = if m = 0 then n 
                  else gcd2 (n mod m, m);