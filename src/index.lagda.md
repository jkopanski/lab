```agda
module index where
```

# Perspicuous Lab

This section acts as the front page to our lab. For now, the only page is an
example of all the features you can use when writing documents/code:

```agda
open import FEATURES
```


## Technology

The Perspicuous Lab is a fork of the [1Lab](https://1lab.dev/), and owes all of
its technical prowess to that project.

The Perspicuous Lab uses [Julia Mono](https://juliamono.netlify.app/) as its
monospace typeface. Julia Mono is licensed under the SIL Open Font License,
v1.1, a copy of which can be found [here](/static/licenses/LICENSE.JuliaMono).
As the sans-serif typeface, we use the [Inria Sans] webfont, and as a serif
typeface, [EB Garamond]. These fonts are both open-source, though rather than
rehosting them, we use them from Google Fonts.

[Inria Sans]: https://fonts.google.com/specimen/Inria+Sans
[EB Garamond]: https://fonts.google.com/specimen/EB+Garamond

Mathematics is rendered using [KaTeX](https://katex.org), and as so, the
Perspicuous Lab  redistributes KaTeX's fonts and stylesheets, even though the
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

