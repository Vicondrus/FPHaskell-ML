fun hd(x::_) = x;
fun tl (_::xs) = xs;

fun prodl ns = if null ns then 1
               else hd ns * prodl (tl ns); 
