datatype ('a,'b) d_sum = In1 of 'a 
		        | In2 of 'b;

fun conc1 []    	  = ""
 |  conc1 ((In1 s) :: xs) = s ^ conc1 xs
 |  conc1 ((In2 _) :: xs) = conc1 xs; 
 
