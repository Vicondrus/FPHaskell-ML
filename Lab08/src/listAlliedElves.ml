datatype creature = Elf of string 
	          | Man of string * string ; 

val lastAlliance = 
  [Elf "Cirdan", 
   Man ("Isildur", "son of Elendil"), 
   Elf "Elrond"]: creature list; 

fun listElves []              = ""
 |  listElves ((Elf s) :: xs) = s ^ " " ^ listElves xs
 |  listElves ((Man _) :: xs) = listElves xs; 
	    
	