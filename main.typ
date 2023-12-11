#import "import.typ": *

#set text(size: 25pt)
#set terms(separator: h(1em))

#show: metropolis-theme.with()


#title-slide(
    author: text(0.83em)[*Jiaxin Huang (Jacky) #super[1]*, Sarah Meng Li#super[2,3], Lia Yeh#super[4,5], Aleks Kissinger#super[4], Michele Mosca#super[2,3,6], Michael Vasmer#super[2,6]],
    // ([*Jixin Huang (Jacky) #super[1]*], [Sarah Meng Li#super[2,3]], [Lia Yeh#super[4,5]], [Aleks Kissinger#super[4]], [Michele Mosca#super[2,3,6]], ),
    title: text(rgb("2B3467"))[Graphical CSS Code Transformation Using ZX Calculus],
    subtitle: [#link("https://arxiv.org/abs/2307.02437")[doi: 10.4204/eptcs.384.1]],
    extra: text(0.9em)[#super[1]Dept. of Computer Science, University of Hong Kong \
      #super[2]Dept. of Combinatorics & Optimization, University of Waterloo\
      #super[3]Institute for Quantum Computing, University of Waterloo\
      #super[4]University of Oxford\
      #super[5]Quantinuum\
      #super[6]Perimeter Institute]
)

#new-section-slide[Overview]

#include "scripts/0_overview.typ"

#new-section-slide[Quantum Error Correction]

#include "scripts/1_qec.typ"

#new-section-slide[Encoders as ZX diagrams]
#include "scripts/2_encoder.typ"

#new-section-slide[Pushing through the encoder]
#include "scripts/3_pte.typ"

#new-section-slide[Code morphing]
#include "scripts/4_morph.typ"

#new-section-slide[Gauge fixing]
#include "scripts/5_gauge.typ"

#new-section-slide[Conclusion]

#slide(title: [Conclusion & outlook], )[
  // #write_footer[Vuillot, Christophe et al. “Code deformation and lattice surgery are gauge fixing.” New Journal of Physics 21 (2018): n. pag.]

  #line-by-line[
  - pushing through the encoder:
    - generalize to non-CSS codes
  - code morphing
  - gauge fixing:
    - code deformation
  ]

  #place(dx: 630pt, dy: -80pt)[#align(center)[#grid[
    #image("figs/qr.svg", width: 100pt)][
    #link("https://arxiv.org/abs/2307.02437")[#text(0.7em)[arXiv:2307.02437]]]]
  ]
]

#slide(title: [Short Ad...])[
  This set of slides is typeset with _Typst_.

  Easy to learn, fast and versatile!
]