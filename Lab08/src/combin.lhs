\begin{code}
combC f x y = f y x

combK n x = n

infixr 9 *
f * g = combB f g
	where combB f g x = f (g x)

combS :: (a -> b -> c) -> (a -> b) -> a -> c
combS x y z = x z (y z)
\end{code}

