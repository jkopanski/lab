```agda
module FEATURES where
```

# Overview of Features

Every document on the lab is a literate Agda file, which means files are a
polyglot of Markdown and Agda. By default we're in Markdown mode, but we can
switch to Agda code at any point in time:

```agda
data Bool : Set where
  true false : Bool
```

In addition to defining real Agda code, we can also reference it in prose, as in
`Bool`{.Agda}, `true`{.Agda}, and `false`{.Agda}, all of which you should be
able to hover over, and click to go to their definition.

Note that for the time being, you can use the standard library:

```agda
import Data.Nat
```

and you can highlight it inline `ℕ`{.Agda}, but attempting to click through to
its definition will give you a 404. Don't let this stop you in the short-term;
Sandy will get around to fixing it at some point.

Referencing code is not all that we can do. We can also write $\LaTeX$ inline, which means doing math is
a snap---both inline ($(x \le y) \lor (y \le x)$), and in blocks:

$$
\sum_{i=0}^j {\frac{n_i}{i!}}
$$

Since we have access to $\LaTeX$, we can also make TikZ commutative diagrams.
The easiest way of producing these is via [quiver](https://q.uiver.app/), which
is a visual editor and can export directly to TikZ:

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


