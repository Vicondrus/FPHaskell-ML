datatype 'a seq = Nil 
                | Cons of 'a * (unit -> 'a seq)
