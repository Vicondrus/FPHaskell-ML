datatype ('a,'b) d_sum = TC1 of 'a 
                       | TC2 of 'b;               
val d_sumFellowship = 
  [TC2 ( TC1 ("Frodo", "Baggins", "Frodo")), 
   TC2 ( TC1 ("Samwise", "Gamgee", "Sam")), 
   TC1 ( TC2 ("Aragorn", "son of Arathorn II")), 
   TC1 ( TC1 ("Legolas"))];
  