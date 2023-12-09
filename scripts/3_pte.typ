#import "../import.typ": *


#slide(title: [Pushing Through the Encoder (PTE)])[
  #reset_footer()
  #image("../figs/pte/UE=EU.svg", width: 600pt)
  #place(dx:25pt, dy:-90pt)[
      $dots.v #h(40pt)
      #alternatives(repeat-last: true)[$U$][*$D$*]
      #h(35pt) dots.v #h(40pt)
      E #h(40pt) dots.v #h(50pt) = #h(60pt)
      dots.v #h(40pt) E #h(40pt) dots.v #h(35pt)
      #alternatives(repeat-last: true)[$overline(U)$][*$overline(D)$*] #h(40pt) dots.v$]


  #uncover(2)[#cbox[Given a ZX diagram $D$, what is the corresponding diagram $overline(D)$,\ such that the above equation holds?]]
]


#slide(title: [Lemma: PTE])[
  #image("../figs/pte/simple.svg", width: 550pt)

  #align(right)[assuming $overline(X)_1=X_1 X_2$]
]


#slide(title: [Lemma: PTE])[
  #image("../figs/pte/more wires.svg", width: 350pt)
]

#slide(title: [Lemma: PTE])[
  #image("../figs/pte/general.svg", width: 550pt)
]

#slide(title: [The $[| 4, 2, 2 |]$ code])[
  $cal(S)=angle.l X X X X, Z Z Z Z angle.r,\
  overline(X)_1=X_1 X_2, quad overline(Z)_1=Z_1 Z_3,\
  overline(X)_2=X_1 X_3, quad overline(Z)_2=Z_1 Z_2.$

  #pause
  #image("../figs/pte/422.svg", height: 130pt)
]

#slide(title: [Example: $overline(X)_1$])[

  #box(image("../figs/pte/x/1.svg", width: 7em), baseline: 50%)
  #pause
  #h(.5em)#eqt[PTE]#h(.5em)
  #box(image("../figs/pte/x/2.svg", width: 7.6em), baseline: 35%)
  #pause
  #h(.5em)#eqt[$pi$-copy]#h(.5em)
  #box(image("../figs/pte/x/3.svg", width: 7em), baseline: 50%)
]

#slide(title: [Example: $X_1 X_2$ measurement])[
  #box(image("../figs/pte/Mx/3.svg", width: 7em), baseline: 50%)
  #pause
  #h(.5em)#eqt[unfusion]#h(.5em)
  #box(image("../figs/pte/Mx/2.svg", width: 7.3em), baseline: 37%)
  #pause
  #h(.5em)#eqt([reversed], sub: [PTE])#h(.5em)
  #box(image("../figs/pte/Mx/1.svg", width: 7em), baseline: 50%)

]


#slide(title: [Example: $overline(T)$ gate])[
  #uncover("2-")[#place(dx: 650pt, dy: 220pt)[#text(0.7em)[
    $overline(X)_1=X_1 X_2,\ overline(Z)_1=Z_1 Z_3$]]]

  #box(image("../figs/pte/t/1.svg", width: 7em), baseline: 50%)
  #pause
  #h(.5em)#eqt[PTE]#h(.5em)
  #box(image("../figs/pte/t/2.svg", width: 7em), baseline: 33%)
  #pause
  #h(.5em)#eqt[unfusion]#h(.5em)
  #box(image("../figs/pte/t/3.svg", width: 8em), baseline: 38%)

]

#slide(title: [Example: $overline(H)$ gate])[
  #box(image("../figs/pte/h/1.svg", height: 100pt), baseline: 40%)
  #pause
  #h(.3em)#eqt[Euler]#h(.3em)
  #box(image("../figs/pte/h/2.svg", height: 110pt), baseline: 40%)
  #pause
  #h(.3em)#eqt[PTE]#h(.3em)
  #box(image("../figs/pte/h/3.svg", height: 140pt), baseline: 30%)

  #pause
  #h(4em)#eqt[sc]#h(.5em)
  #box(image("../figs/pte/h/4.svg", width: 400pt), baseline: 40%)
]