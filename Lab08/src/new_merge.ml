fun new_merge (lsx,lsy) : real list = 
  case lsx of
  []      => lsy
  | x::xs => 
    (case lsy of
    []      => lsx
    | y::ys => if x<=y 
               then x :: new_merge(xs,lsy)
               else y :: new_merge(lsx,ys));
			  