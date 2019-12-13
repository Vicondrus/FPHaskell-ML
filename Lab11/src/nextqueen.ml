fun nextqueen n qs = 
   map (secr op::qs) 
       (filterq (sure qs) (upto (1,n)));
       
