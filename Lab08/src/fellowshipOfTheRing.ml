datatype creature = 
    Elf of string 
  | Man of string * string 
  | Hobbit of string * string * string;

val fellowship = 
  [Hobbit ("Frodo", "Baggins", "Frodo"), 
   Hobbit ("Samwise", "Gamgee", "Sam"), 
   Man ("Aragorn", "son of Arathorn II"), 
   Elf "Legolas"]: creature list; 
