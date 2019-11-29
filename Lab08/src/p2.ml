fun even n = (n mod 2 = 0); 
fun p2 n = (n = 1) orelse
           (even(n) andalso p2 (n div 2)); 
