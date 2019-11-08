\begin{code}
data New_bool = New_true | New_false  
    
new_not (b:New_bool) 
 | b == New_true = New_false 
 | b == New_false = New_true 
\end{code}
