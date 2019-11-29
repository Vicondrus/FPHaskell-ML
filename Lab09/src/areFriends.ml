fun sumfact x i s = if x=i then s+x
                    else if (x mod i = 0) then sumfact x (i+1) (s+i)
                    else sumfact x (i+1) s;

fun areFriends x y = y * (sumfact x 1 0) = x * (sumfact y 1 0);