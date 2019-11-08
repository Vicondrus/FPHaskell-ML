\begin{code}
data New_bool = New_true | New_false  
    
new_not New_true = New_false 
new_not New_false = New_true 
\end{code}
