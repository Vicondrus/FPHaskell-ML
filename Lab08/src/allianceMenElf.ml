datatype ('a,'b) d_sum = Man of 'a 
		       | Elf of 'b;

fun listElves []    	      = ""
 |  listElves ((Elf s) :: xs) = s ^ " " ^ listElves xs
 |  listElves ((Man _) :: xs) = listElves xs; 
 
val lastAlliance = [Elf "Legolas", Man ("Boromir", "son of Rodomir"), Elf "King"]; 
		       