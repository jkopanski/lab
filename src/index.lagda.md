```agda
module index where
```

# 1lab

```agda
open import Prim.Type
```

Mathematics is, fundamentally, a social activity. Correspondingly, we
have a page dedicated to letting authors introduce and talk a bit
themselves and their other work:

```agda
open import Authors
```

Similarly, we maintain this list of related resources which serve as an
introduction to HoTT in general:


## Technology

The 1Lab uses [Julia Mono](https://juliamono.netlify.app/) as its
monospace typeface. Julia Mono is licensed under the SIL Open Font
License, v1.1, a copy of which can be found
[here](/static/licenses/LICENSE.JuliaMono). As the sans-serif typeface, we
use the [Inria Sans] webfont, and as a serif typeface, [EB Garamond].
These fonts are both open-source, though rather than rehosting them, we
use them from Google Fonts.

[Inria Sans]: https://fonts.google.com/specimen/Inria+Sans
[EB Garamond]: https://fonts.google.com/specimen/EB+Garamond

Mathematics is rendered using [KaTeX](https://katex.org), and as so, the
1Lab redistributes KaTeX's fonts and stylesheets, even though the
rendering is done entirely at build-time. KaTeX is licensed under the
MIT License, a copy of which can be found
[here](/static/licenses/LICENSE.KaTeX).

Our favicon is Noto Emoji's ice cube (cubical type theory - get it?),
codepoint U+1F9CA. This is the only image from Noto we redistribute.
Noto fonts are licensed under the Apache 2.0 License, a copy of which
can be found [here](/static/licenses/LICENSE.Noto).

Commutative diagrams appearing in body text are created using
[quiver](https://q.uiver.app), and rendered to SVG using a combination of
[LaTeX](https://tug.org/texlive/) and
[pdftocairo](https://poppler.freedesktop.org/), part of the Poppler
project. No part of these projects is redistributed.

And, of course, the formalisation would not be possible without
[Agda](https://github.com/agda/agda).


## Data types

The `Data` namespace contains definitions of oft-used data types, which
are fundamental to the rest of the development but not “basic type
theory”. These modules contain (or re-export) the types themselves,
useful operations on them, characterisation of their path spaces, etc.

The natural numbers have a lot of associated theory (number theory), so
there are a lot of child modules of `Data.Nat`{.Agda}:

```agda
open import Data.Nat  -- The natural numbers
open import Data.Nat.Solver
-- Commutative semiring solver for equations in Nat

open import Data.Nat.DivMod -- Euclidean division
open import Data.Nat.Properties -- Arithmetic properties
```

We also have a theory of finite sets:

```agda
open import Data.Fin
open import Data.Fin.Base -- The standard finite sets
```

And general data types:

```agda
open import Data.Sum  -- Coproduct types
open import Data.Bool -- The booleans
open import Data.List -- Finite lists
open import Data.Maybe -- The Maybe type
```

