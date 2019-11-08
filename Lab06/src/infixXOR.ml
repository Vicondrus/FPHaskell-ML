infix xor; 

fun x xor y = (x orelse y) andalso 
              not (x andalso y);

