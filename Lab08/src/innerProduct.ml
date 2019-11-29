fun foldx f ne [] = ne
  | foldx f ne(x::xs) = foldx f (f(x,ne)) xs;

fun zipWith f [] [] = []
  | zipWith f (x::xs) (y::ys) = f (x,y)::(zipWith f xs ys);

fun innerProduct xs ys = foldx op+ 0 (zipWith op* xs ys);