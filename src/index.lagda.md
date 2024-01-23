```agda
module index where
```

# 1lab

A formalised, cross-linked reference resource for cubical methods in
Homotopy Type Theory. Unlike the [@HoTT], the 1lab is not a "linear"
resource: Concepts are presented as a directed graph, with links
indicating _dependencies_. For instance, the statement of the univalence
principle depends on [[universes]], [[identifications|path]] and
[[equivalences]].  In addition to the hyperlinked "web of concepts"
provided by the Agda code, there is a short introduction to homotopy
type theory: **[Start here](1Lab.intro.html)**.

```agda
open import Prim.Type
```

```agda
_ : ∀ {ℓ} {A B : Type ℓ} → is-equiv (path→equiv {A = A} {B})
_ = univalence
```

The purpose of the "web of concepts" approach is to let each reader
approach the 1lab at their own pace: If you already know what all of the
code above means, you can click on `univalence`{.Agda} to be taken
directly to the construction of the equivalence --- but if you _don't_,
you can click on other definitions like `is-equiv`{.Agda} and
`path→equiv`{.Agda}, and in turn explore the dependencies of _those_
concepts, and so on.

The 1lab is a community project: we use [GitHub] for source control and
talk on [Discord]. Our purpose is to make cubical methods in homotopy
type theory accessible to, and inclusive of, everyone who is interested,
regardless of cultural background, age, ability, ethnicity, gender
identity, or expression. Correspondingly, interactions in those forums
are governed by the [Contributor Covenant Code of Conduct][cccc]. **We
believe HoTT is for everyone, and are committed to fostering a kind,
inclusive environment.**

[GitHub]: https://github.com/plt-amy/1lab
[Discord]: https://discord.gg/Zp2e8hYsuX
[cccc]: https://github.com/plt-amy/1lab/blob/main/CODE_OF_CONDUCT.md

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
open import Data.Nat.Divisible -- Divisibility
open import Data.Nat.Divisible.GCD
-- The greatest common divisor, Euclid's algorithm

open import Data.Nat.Order -- Properties of ≤
open import Data.Nat.Properties -- Arithmetic properties
```

We also have a theory of finite sets:

```agda
open import Data.Fin
open import Data.Fin.Base -- The standard finite sets
open import Data.Fin.Finite -- Finiteness
open import Data.Fin.Closure -- Closure properties of finiteness
open import Data.Fin.Properties -- Properties of finite sets
```

And general data types:

```agda
open import Data.Sum  -- Coproduct types
open import Data.Dec  -- Decisions and decidable types
open import Data.Bool -- The booleans
open import Data.List -- Finite lists
open import Data.Maybe -- The Maybe type
```

