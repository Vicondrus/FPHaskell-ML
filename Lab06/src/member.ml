fun memb (x, []) = false
 | memb (x,(y::ys)) = (x=y) orelse memb (x,ys);
