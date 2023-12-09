
#import "import.typ": *
// #include "include.typ"


#set text(size: 25pt)
#set terms(separator: h(1em))

#show: metropolis-theme.with()


#title-slide(
    author: [*Jiaxin Huang (Jacky) #super[1]*, Sarah Meng Li#super[2,3], Lia Yeh#super[4,5], Aleks Kissinger#super[4], Michele Mosca#super[2,3,6]],
    // ([*Jixin Huang (Jacky) #super[1]*], [Sarah Meng Li#super[2,3]], [Lia Yeh#super[4,5]], [Aleks Kissinger#super[4]], [Michele Mosca#super[2,3,6]], [Michael Vasmer#super[2,6]]),
    title: text(rgb("2B3467"))[Graphical CSS Code Transformation Using ZX Calculus],
    subtitle: [#link("https://arxiv.org/abs/2307.02437")[doi: 10.4204/eptcs.384.1]],
    extra: [#super[1]Dept. of Computer Science, University of Hong Kong \
      #super[2]Dept. of Combinatorics & Optimization, University of Waterloo\
      #super[3]Institute for Quantum Computing, University of Waterloo\
      #super[4]University of Oxford\
      #super[5]Quantinuum\
      #super[6]Perimeter Institute]
)

#new-section-slide[Overview]

// #include "0_overview.typ"

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
    - discover / verify conditions for transversality
    - extension to non-CSS codes
  - code morphing: generic procedure for code search
  - gauge fixing:
    - preservation of error-correcting properties during code transformation
    - code deformation
  ]

  #place(dx: 630pt, dy: -80pt)[#align(center)[#grid[
    #image("figs/qr.svg", width: 100pt)][
    #link("https://arxiv.org/abs/2307.02437")[#text(0.7em)[arXiv:2307.02437]]]]
  ]
]