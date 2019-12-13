twos = 2:twos
p n = 1 + foldr1 (^) (take n twos)