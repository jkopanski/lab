```agda
module Prim.Type where
```

# Test Definition

```agda
data Bool : Set where
  true false : Bool
```

# Some Prose

This module defines the booleans. We can refer to them inline like `Bool`{.Agda},
`true`{.Agda}, and `false`{.Agda}, all of which you should be able to hover over.

Furthermore, we can do inline math ($(x \le y) \lor (y \le x)$), as well as
in blocks:

$$
\sum_i^j {\frac{n_i}{i!}}
$$

We can also inline commutative diagrams, as produced by
[quiver](https://q.uiver.app/):

~~~{.quiver}
% https://q.uiver.app/#q=WzAsNCxbMCwwLCJYIl0sWzEsMSwiQSBcXHRpbWVzIEIiXSxbMSwyLCJBIl0sWzIsMSwiQiJdLFswLDIsIiIsMCx7ImN1cnZlIjoyfV0sWzAsMywiIiwyLHsiY3VydmUiOi0yfV0sWzEsMiwiXFxwaV8xIiwyXSxbMCwxLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSwzLCJcXHBpXzIiXV0=
\[\begin{tikzcd}
	X \\
	& {A \times B} & B \\
	& A
	\arrow[curve={height=12pt}, from=1-1, to=3-2]
	\arrow[curve={height=-12pt}, from=1-1, to=2-3]
	\arrow["{\pi_1}"', from=2-2, to=3-2]
	\arrow[dashed, from=1-1, to=2-2]
	\arrow["{\pi_2}", from=2-2, to=2-3]
\end{tikzcd}\]
~~~


