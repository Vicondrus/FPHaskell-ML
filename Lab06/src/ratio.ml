fun gcd (m, n) = if m = 0 then n 
                 else gcd (n mod m, m);

fun ratio (n, d) = 
  let 
    val c = gcd (n, d)
  in 
    (n div c, d div c)
  end; 
