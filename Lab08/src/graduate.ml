datatype ('a,'b) d_sum = In1 of 'a 
		       | In2 of 'b;

datatype graduate = School of string 
		    | Highschool of string * string 
		    | Faculty of string * string * string; 

val l1 = [School "G 15", 
         Highschool ("Emil Racovita","Cluj-Napoca"),
	 Faculty ("Automation and Computer Science",
	          "Technical University of Cluj-Napoca",
		  "Cluj-Napoca"),   
	 Faculty ("Medicine",
	          "Iuliu Hatieganu University of Medicine and Pharmacy",
		  "Cluj-Napoca") 
	 ]; 

val l2 = ["G 15",  ("Emil Racovita","Cluj-Napoca") ] :: 
          (string, string * string) d_sum;  