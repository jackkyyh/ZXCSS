// #import "slides.typ": *
#import "@preview/polylux:0.3.1": *
#import "my.typ": *

#import themes.metropolis: *

#show: metropolis-theme.with()
#set text(size: 25pt)
 
// #show link: set text(blue)
// #set text(font: "Inria Sans")
// #show heading: set text(font: "Vollkorn")
// #show raw: set text(font: "JuliaMono")


#set terms(separator: h(1em))
// #show strong: set text(rgb("EB455F"))

#title-slide(
    author: [*Jiaxin Huang (Jacky) #super[1]*, Sarah Meng Li#super[2,3], Lia Yeh#super[4,5], Aleks Kissinger#super[4], Michele Mosca#super[2,3,6]],
    // ([*Jixin Huang (Jacky) #super[1]*], [Sarah Meng Li#super[2,3]], [Lia Yeh#super[4,5]], [Aleks Kissinger#super[4]], [Michele Mosca#super[2,3,6]], [Michael Vasmer#super[2,6]]),
    title: text(rgb("2B3467"))[Graphical CSS Code Transformation Using ZX Calculus],
    extra: [#super[1]Dept. of Computer Science, University of Hong Kong \
      #super[2]Dept. of Combinatorics & Optimization, University of Waterloo\
      #super[3]Institute for Quantum Computing, University of Waterloo\
      #super[4]University of Oxford\
      #super[5]Quantinuum\
      #super[6]Perimeter Institute]
)


#new-section-slide[Overview]

#slide()[

  #place(dx: 0em, dy: -2.0em)[
    $dbracket(4, 2, 2)$\ square code]
  
  #place(dx: 3em, dy: 4em)[
    $dbracket(5, 1, 3)$ code]
    
  #place(dx: 10em, dy: -2.5em)[
    $dbracket(7, 1, 3)$\ Steane code]

  #place(dx: 10em, dy: 7em)[
    $dbracket(8, 3, 2)$\ cubic code]
  
  #place(dx: 19em, dy: 1em)[
    $dbracket(15, 1, 3)$\ quantum \ Reed-Muller code]
  
  #place(dx: 21em, dy: 8em)[
    $dbracket(10, 1, 2)$ code]

  #pause
  #place(dx:7em, dy:-1em)[#rotate(-10deg)[*$arrow.l.long$*]]
  #place(dx:4em, dy:0.5em)[#rotate(0deg)[*morphing*]]
  #place(dx:8em, dy:1.5em)[#rotate(-40deg)[*$arrow.l.long$*]]
  
  #pause
  #place(dx:16.5em, dy:5.5em)[#rotate(-30deg)[*$arrow.l.long$*]]
  #place(dx:22.5em, dy:5.8em)[#rotate(90deg)[*$arrow.r.long$*]]
  #place(dx:18em, dy:5.8em)[#rotate(0deg)[*morphing*]]


  #pause
  #place(dx:16em, dy:-1em)[#rotate(10deg)[*$limits(arrow.l.r.long)^(#text[gauge\ fixing])$*]]
]



#new-section-slide("Quantum Error Correction")

#slide(title: [Stabilizer codes], )[
// footer: [Gottesman, D. (1997). Stabilizer codes and quantum error correction. California Institute of Technology.]

  / *Stabilizers*: an Abelian subgroup $cal(S) < cal(P)_n$

  #pause
  
  / *Codespace*: $cal(C):={ket(psi) in cal(H)^(times.circle n): S ket(psi)=+ket(psi),forall S in cal(S)}$

  #pause
  
  // / *Encoders*: #box(baseline: 90%)[#align(center)[
  //   $#alternatives(start: 3, position: center)[$E$][$E dot E^dagger$]: 
  //   & #alternatives(start: 3, position: center)[$cal(H)^(times.circle k)$][$cal(U)(cal(H)^(times.circle k))$] & arrow
  //   & #alternatives(start: 3, position: center)[$cal(H)^(times.circle n)$][$cal(U)(cal(H)^(times.circle n))$]\
  //   & #alternatives(start: 3, position: center)[$ket(psi)$][$U$] &arrow.r.hook
  //   & #alternatives(start: 3, position: center)[$ket(overline(psi))$][$overline(U)$] $]]

  / *(Clifford) Encoders*: #box(baseline: 70%)[#align(center)[#grid(columns: 5, column-gutter: 7pt, row-gutter: 1em)[
    #alternatives(start: 3, position: center)[$E$][$E dot E^dagger$]][:][
    #alternatives(start: 3, position: center)[$cal(H)^(times.circle k)$][$cal(U)(cal(H)^(times.circle k))$]][$->$][
    #alternatives(start: 3, position: left)[$cal(C)$][$cal(U)(cal(C))$]][][][
    #alternatives(start: 3, position: center)[$ket(psi)$][$U$]][$arrow.r.hook$][
    #alternatives(start: 3, position: center)[$ket(overline(psi)):= E ket(psi)$][$overline(U):= E U E^dagger $]]]]
    #box[#place(dy: 1em)[#alternatives(start: 3, position: center)[*logical states*][*logical operators*]]]

    #only(3)[#place[#image("figs/pte/encoder.svg", width: 9em)]]
    
    
  // ........#box[#align(center)[#alternatives(start: 3, position: center)[xxx][y]]]........
  // / *Logical (Pauli) operators*: $cal(L):=cal(N)(cal(S)) slash cal(S)$#only("3")[
  //     , where #place(dx: 8em, dy:1em)[$cal(N)(cal(S)):={P in cal(P)_n: P S=S P, forall S in cal(S)}$]
  //   ]

  // #pause
  // #h(12.8em) $tilde.eqq angle.l overline(X)_1, overline(Z)_1, overline(X)_2, overline(Z)_2, ..., overline(X)_k, overline(Z)_k angle.r < cal(P)_n$
  
  // #only(5)[#place(dx: 11.3em)[$cal(P)_k=angle.l X_1, Z_1, X_2, Z_2, ..., X_k, Z_k angle.r$]]

  // #pause

  
  // / *Encoders*: $E: cal(H)^(times.circle k) arrow cal(C)$
  // #h(7.5em)$ket(psi)arrow.r.hook &ket(overline(psi))$
  
  // #h(3em) $E dot E^dagger: cal(U)(cal(H)^(times.circle k)) -> cal(U)(cal(H)^(times.circle n))$
  // a Clifford isometry $E$, s.t., $forall P in cal(P)_k$,
  // $ E P E^dagger = overline(P) in cal(L).  $
]

// #slide(title: [Logical states])[
//   $E: &cal(H)^(times.circle k) &arrow &cal(H)^(times.circle n)\
//   &ket(psi) &arrow.r.hook &ket(overline(psi)) := E ket(psi)$
// ]

// #slide(title: [Logical operators])[
//   $E dot E^dagger: &cal(U)(cal(H)^(times.circle k)) &->& cal(U)(cal(H)^(times.circle n))\ 
//   &U &arrow.r.hook& overline(U):=E U E^dagger$
// ]

#slide(title: [Logical operators])[

  // $overline(U):=E U E^dagger$
  // $xx$

  // #alternatives(start: 2)[

  //   / *Logical (Pauli) operators*: $cal(L):=angle.l X_1, Z_1, X_2, Z_2, ..., X_k, Z_k angle.r$
  // ][
  //   $=> E U = overline(U) E$
  // ]


  #one-by-one()[
    $overline(U):=E U E^dagger$
  ][#only(2)[#place[
    / *Logical Paulis*: $overline(P)_i = E P_i E^dagger, forall P_i in cal(P)_k$]]][

    $=> E U = overline(U) E$
  ][
    #image("figs/pte/UE=EU.svg", width: 600pt)
    #place(dx:2.9em, dy:-2.5em)[$U$]
    #place(dx:7em, dy:-2.5em)[$E$]
    #place(dx:16.5em, dy:-2.5em)[$E$]
    #place(dx:20.8em, dy:-2.5em)[$overline(U)$]
  ]
]

#new-section-slide[The encoders]

#slide(title: [Encoders as ZX diagrams], )[
  // footer: [Kissinger, A. (2022). Phase-free ZX diagrams are CSS codes (... or how to graphically grok the surface code). arXiv preprint arXiv:2204.14038.]

  #pause
  / CSS codes: stabilizer codes whose stabilizers can be divided\ into 2 types: *X-type* or *Z-type*, i.e.,
  $ cal(S)={cal(X)_1,cal(X)_2...} union {cal(Z)_1,cal(Z)_2...} $

  #pause
  Every CSS code encoder is a phase-free ZX diagram.
]

#slide(title: [Encoders as ZX diagrams], )[
  // footer: [Kissinger, A. (2022). Phase-free ZX diagrams are CSS codes (... or how to graphically grok the surface code). arXiv preprint arXiv:2204.14038.]

  #columns(2)[
    Stabilizers of the *Steane code*:
    #columns(2)[
      #h(2em) #uncover(1, mode:"transparent")[$vec(delim:#none, Z_1 Z_3 Z_5 Z_7, Z_2 Z_3 Z_6 Z_7, Z_4 Z_5 Z_6 Z_7)$]
    #colbreak()
      $vec(delim:#none,
      #uncover("1, 3-", mode:"transparent")[$X_1 X_3 X_5 X_7$],
      #uncover("1, 4-", mode:"transparent")[$X_2 X_3 X_6 X_7$],
      #uncover("1, 5-", mode:"transparent")[$X_4 X_5 X_6 X_7$])$
    ]
  
    Logical Pauli operators:
    #columns(2)[
      #h(2em) #uncover(1, mode:"transparent")[$vec(delim:#none, overline(Z)=Z_1 Z_4 Z_5)$]
    #colbreak()
      $vec(delim:#none, 
      #uncover("1, 6-", mode:"transparent")[$overline(X)=X_1 X_4 X_5$])$
    ]
  
  #colbreak()
    #alternatives[][
      #image("figs/steane/zx col 0.svg", width: 50pt)][
      #image("figs/steane/zx col 1.svg", width: 110pt)][
      #image("figs/steane/zx col 2.svg", width: 110pt)][
      #image("figs/steane/zx col 3.svg", width: 110pt)][
      #image("figs/steane/zx col.svg", width: 130pt)]
      // [ #box(image("figs/steane/zx col.png", width: 130pt), baseline: 50%)$=$ #box(image("figs/steane/zx geo.png", width: 200pt), baseline: 50%)]
  ]
]


#new-section-slide[Pushing through the encoder]

#slide(title: [Pushing Through the Encoder (PTE)])[
  #image("figs/pte/UE=EU.svg", width: 600pt)
  #place(dx:2.8em, dy:-3.5em)[#alternatives[$U$][*$D$*]]
  #place(dx:7em, dy:-3.5em)[$E$]
  #place(dx:16.5em, dy:-3.5em)[$E$]
  #place(dx:20.7em, dy:-3.5em)[#alternatives[$overline(U)$][*$overline(D)$*]]

  #uncover(2)[#box(stroke: 2pt + gray, inset: 15pt, radius: 10pt)[Given a ZX diagram *$D$*, what is the corresponding diagram *$overline(D)$*, such that the above equation holds?]]
  // #x
]

#slide(title: [Lemma: PTE])[
  #image("figs/pte/general.svg", width: 21em)

  #align(right)[assuming $overline(X)_1=X_1 X_2$]
]

#slide(title: [Example: $overline(X)_1$])[

  #box(image("figs/pte/x/1.png", width: 7em), baseline: 50%)
  #pause
  #h(.5em)$eqt("PTE")$#h(.5em)
  #box(image("figs/pte/x/2.png", width: 7.6em), baseline: 35%)
  #box[#place(dx: 3.5em, dy: 4em)[#align(right)[assuming $overline(X)_1=X_1 X_2$]]]
  #pause
  #h(.5em)$eqt(pi#text[-copy])$#h(.5em)
  #box(image("figs/pte/x/3.png", width: 7em), baseline: 50%)

]

#slide(title: [Example: $X_1 X_2$ measurement])[
  #box(image("figs/pte/Mx/3.png", width: 7em), baseline: 50%)
  #pause
  #h(.5em)$eqt("unfusion")$#h(.5em)
  #box(image("figs/pte/Mx/2.png", width: 7.3em), baseline: 37%)
  #pause
  #box[#place(dx: 4em, dy: 4em)[#align(right)[assuming $overline(X)_1=X_1 X_2$]]]
  #h(.5em)$eqt("reversed", sub: "PTE")$#h(.5em)
  #box(image("figs/pte/Mx/1.png", width: 7em), baseline: 50%)
]


#slide(title: [Example: $overline(T)$ gate])[
  #box(image("figs/pte/t/1.png", width: 7em), baseline: 50%)
  #pause
  #h(.5em)$eqt("PTE")$#h(.5em)
  #box(image("figs/pte/t/2.png", width: 7em), baseline: 33%)
  #box[#place(dx: 4.5em, dy: 4em)[#align(right)[assuming $overline(Z)_1=Z_2 Z_3$]]]
  #pause
  #h(.5em)$eqt("unfusion")$#h(.5em)
  #box(image("figs/pte/t/3.png", width: 8em), baseline: 38%)
]

#slide(title: [Example: $overline(H)$ gate])[
  #box(image("figs/pte/h/1.png", width: 5em), baseline: 50%)
  #pause
  #h(.5em)$eqt("euler")$#h(.5em)
  #box(image("figs/pte/h/2.png", width: 9em), baseline: 40%)
  #pause
  #h(.5em)$eqt("PTE")$#h(.5em)
  #box(image("figs/pte/h/3.png", width: 9.5em), baseline: 35%)
 
  #pause
  #h(4em)$eqt("sc")$#h(1em)
  #box(image("figs/pte/h/4.png", width: 18em), baseline: 50%)
]


// #slide()[
//   #image("figs/pte/pte.png", width: 70%)

//   #pause
//   #image("figs/pte/pte trick.png", width: 70%)
// ]

#new-section-slide(" ")

#slide(title: "Code morphing", )[
  // footer: [Vasmer, M., & Kubica, A. (2022). Morphing quantum codes. PRX Quantum, 3(3), 030319.]

  #pause

  Given a *parent code* $cal(C)_("parent")$,
  with stabilizers $cal(S)$ and physical qubits $Q$,

  choose a subset $R subset Q$.

  / *child code*: $cal(C)_("child")$ whose stabilizers are
  $ cal(S)_("child"):={S in cal(S): op("supp")(S) subset R}. $
]

#slide(title: "Code morphing", )[
  // footer: [Vasmer, M., & Kubica, A. (2022). Morphing quantum codes. PRX Quantum, 3(3), 030319.]

  Consider the encoders $E_("parent")$ and $E_("child")$, which are Clifford,

  / *morphed code*: $cal(C)_("morphed")$ whose encoder is
  $ E_("morphed"):= (#text(gray)[$I^(times.circle|Q backslash R|)times.circle$]  E^dagger_("child"))E_("parent"). $
]

#slide(title: "Code morphing")[
  #grid(columns: (22em, 1fr))[
  Given an encoder $E_("parent") $ and a subset $R subset Q$,
  
    #alternatives[][
      #box(width: 17em)[1. Unfuse all #text(olive)[green] spiders which are supported both on $R$ and $Q backslash R$.]][
      #box(width: 19em)[2. Add an identity #text(red)[red] spider between each pair of unfused #text(olive)[green] spiders.]][
      #box(width: 22em)[3. let #text(purple)[$E_("child")$] be the subdiagram enclosed by $R$;\ let #text(blue)[$E_("morphed")$] be the subdiagram enclosed by $Q backslash R$]]
  ][
    #alternatives[
      #place(dx:3em, dy: 8em)[$E_("parent")$]
      #place(dx:2em, dy: -1.5em)[#text(purple)[$R={2,3,6,7}$]]
      #image("figs/morph/2367/1.svg", width: 8em)][
      #place(dx:3em, dy: 8em)[$E_("parent")$] 
      #place(dx:2em, dy: -1.5em)[#text(purple)[$R={2,3,6,7}$]]
      #image("figs/morph/2367/1.svg", width: 8em)][
      #place(dx:2em, dy: -1.5em)[#text(purple)[$R={2,3,6,7}$]]
      #image("figs/morph/2367/2-0.png", width: 8em)][
      #place(dx:2em, dy: -1.5em)[#text(purple)[$R={2,3,6,7}$]]
      #image("figs/morph/2367/3.png", width: 9em)]
    ]
]


#slide(title: "Code morphing")[
  #text(purple)[$R={2,3,6,7}$]
  #set align(center)

  // #only(1)[#box(baseline: 50%)[#place(dx: 3pt, dy: -3.5em)[#image("figs/morph/geo.png", height: 7em)]]]
  // #pause
  #box(baseline: 50%)[#image("figs/morph/2367/1.png", height: 7em)]
  #box(place(dx:-9.5em, dy: -1em)[#alternatives[
      $E_("parent")$][$E_("steane")$]])
  $=$ #h(1em) #box(image("figs/morph/2367/3.png", height: 10em), baseline: 40%)
  #box()[
    #place(dx: -0.5em, dy: -4em)[#text(purple)[#alternatives[
      $E_("child")$][
      $E_(dbracket(4, 2, 2))$]]]
    #place(dx: 0em, dy: 1em)[#text(blue)[#alternatives[
      $E_("morphed")$][
      $E_(dbracket(5, 1, 3))$]]]
  ]
]

// #slide(title: "Code morphing")[
//   // #place()[$R={2,3,6,7}$]
//   #set align(center)

//   // #only(1)[#box(baseline: 50%)[#place(dx: 3pt, dy: -3.5em)[#image("figs/morph/geo.png", height: 7em)]]]
//   // #pause
//   #box(baseline: 50%)[#image("figs/morph/2367/1.png", height: 7em)]
//   #box(place(dx:-9.5em, dy: -1em)[#only("1-3")[$E_("parent")$]#only("4")[$E_("steane")$]])
//   // #pause
//     $=$ #box(image("figs/morph/2367/2.png", height: 11em), baseline: 40%)
//   // #pause
//   $=$ #box(image("figs/morph/2367/3.png", height: 10em), baseline: 40%)
//   #box()[
//     #place(dx: -0.5em, dy: -4em)[#only("3")[$E_("child")$]#only("4")[$E_(dbracket(4, 2, 2))$]]
//     #place(dx: 0em, dy: 1em)[#only("3")[$E_("morphed")$]#only("4")[$E_(dbracket(5, 1, 3))$]]]
// ]

#slide(title: "Code morphing")[
  $R={4,5,6,7}$
  #set align(center)
  #only(1)[#box(baseline: 50%)[#place(dy: -70pt)[#image("figs/morph/geo.png", width: 160pt)]]]
  #one-by-one(start: 2)[
    #box(image("figs/morph/4567/1.png", width: 170pt), baseline: 50%)
    #box(place(dx:-5em, dy: 4em)[$est$])][
    $=$ #box(image("figs/morph/4567/2.png", width: 220pt), baseline: 40%)][
    $=$ #box(image("figs/morph/4567/3.png", width: 270pt), baseline: 40%)
    #box()[
      #place(dx: -10em, dy: 4em)[$E_(dbracket(6, 1, 1))$]
      #place(dx: -5em, dy: 4em)[$E_(dbracket(4, 3, 1))$]]
  ]
]

#new-section-slide[Gauge fixing]

#slide(title: "Steane & quantum Reed-Muller(QRM) code")[

  #table(
    align: (auto, center, center),
    columns: (auto, auto, auto),
    inset: 10pt,
    [], [Steane], [QRM],
    [qubits], $7$, $15$,
    // [transversal gates], [$op("CNOT"), S, #strong[H]$], [$op("CNOT"), S, #strong[T]$]
    [\# stabilizers], [6], [14]
  )
]


#slide(title: "Steane & quantum Reed-Muller(QRM) code", )[
  // footer: [Anderson, J. T., Duclos-Cianci, G., & Poulin, D. (2014). Fault-tolerant conversion between the steane and reed-muller quantum codes. Physical review letters, 113(8), 080501.]

  #table(
    align: (auto, center, center, center),
    columns: (auto, auto, auto, auto),
    inset: 10pt,
    [], text(gray)[Steane], [ExSteane], [QRM],
    [qubits], text(gray)[$7$], $15$, $15$,
    // [transversal gates], text(gray)[$op("CNOT"), S, H$], [$op("CNOT"), S, #strong[H]$], [$op("CNOT"), S, #strong[T]$]
    [\# stabilizers], text(gray)[6], [14], [14]
  )
  $eex=est times.circle ket(Psi)$, where
  $ ket(Psi):=1/sqrt(2)(ket(0)times.circle (est ket(0))+ket(1) times.circle(est ket(1))) $

]

#slide(title: [Quantum subsystem code], )[
  // footer: [Kribs, D., Laflamme, R., & Poulin, D. (2005). Unified and generalized approach to quantum error correction. Physical review letters, 94(18), 180501.]

  / *Gauge group*: any subgroup $cal(G) < cal(P)_n$
  
  / *Stabilizer group*: $cal(S):= cal(N)(cal(G)) sect cal(G)={S in cal(G): S G = G S, forall G in cal(G)}$
  
  / *Gauge operators*: $cal(L)_g:= cal(G) slash cal(S)$
  #h(10em)$tilde.equiv angle.l L_1^X, L_1^Z, ..., L_t^X, L_t^Z angle.r < cal(P)_n$
  
  #place(dx: 24em)[#image("figs/gauge/venn.png", width: 130pt)]
]

#slide(title: "Subsystem code encoders as ZX diagrams")[
  #align(center)[#image("figs/gauge/subsys.png", width: 300pt)]
]



#slide(title: [The $bracket.l.double 15, 1, 3, 3 bracket.r.double$ subsystem code])[
  $gsub :=sex union sqrm$

  $=> ssub = sex sect sqrm$

  $=>cal(L)_g = sex dot.circle sqrm = angle.l L_1^X, L_2^X, L_3^X, L_1^Z, L_2^Z, L_3^Z angle.r$

  #place(dx: 22em)[#image("figs/gauge/s sub.png", width: 240pt)]
]

#slide(title: "QRM")[
  #align(center)[#image("figs/gauge/sub -> qrm.png", width: 25em)]
  #place(dx: 6em, dy: -6em)[$esub$]
  #place(dx: 15em, dy: -6em)[$=$]
  #place(dx: 21.5em, dy: -6em)[$eqrm$]
]

#slide(title: "QRM")[
  #one-by-one[
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 1.png", width: 5.5em)]][
    #h(0.5em)$eqt("def")$#h(0.5em)
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 2.png", width: 5.5em)]][
    #h(0.3em)$eqt(pi-"copy")$#h(0.3em)
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 3.png", width: 5.5em)]][
    #h(0.3em)$eqt("fusion")$#h(0.3em)
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 4.png", width: 5.5em)]]
] 

#slide(title: "ExSteane")[
  #align(center)[#image("figs/gauge/sub -> ex.png", width: 25em)]
  #place(dx: 6em, dy: -6em)[$esub$]
  #place(dx: 16em, dy: -6em)[$=$]
  #place(dx: 22em, dy: -6em)[$eex$]
]

#slide(title: [Gauge fixing (QRM $->$ ExSteane)], )[
  // footer: [Vuillot, C., Lao, L., Criger, B., Almudéver, C. G., Bertels, K., & Terhal, B. M. (2019). Code deformation and lattice surgery are gauge fixing. New Journal of Physics, 21(3), 033028.]
  #alternatives[
    #image("figs/gauge/fixing/0.png", width: 18em)
    #place(dx: 2.5em, dy: -6em)[$eqrm$]
  ][
    #image("figs/gauge/fixing/1.png", width: 18em)
    #place(dx: 2.5em, dy: -6em)[$eqrm$]
  ][
    #image("figs/gauge/fixing/2.png", width: 18em)
    #place(dx: 2.5em, dy: -6em)[$eqrm$]
  ][
    #image("figs/gauge/fixing/3.png", width: 29.5em)
    #place(dx: 2.5em, dy: -6em)[$eqrm$]
    #place(dx: 20em, dy: -6em)[$=$]
    #place(dx: 25em, dy: -6em)[$eex$]
  ]
  #alternatives[][
    / *Step 1*: measure gauge operators $L_1^X,L_2^X,L_3^X$, \ obtaining outcomes $k_1, k_2, k_3 in ZZ_2$.
    ][
    #align(top)[/ *Step 2*: For each $k_i=1$, apply $L_i^Z$.]
    ][]
]


#slide(title: [Gauge fixing (QRM $->$ ExSteane)])[
  #image("figs/gauge/sub -> ex gauge.png", width: 30em)
    #place(dx: 2.5em, dy: -6em)[$eqrm$]
    #place(dx: 16.5em, dy: -6em)[$=$]
    #place(dx: 22em, dy: -6em)[$eex$]
]

#slide(title: [Gauge fixing (QRM $->$ ExSteane)])[
  #alternatives[
    #align(horizon)[
      #image("figs/gauge/gauge fixing.png", width: 30em)]
    #place(dx: 2.5em, dy: -6em)[$esub$]
    #place(dx: 14em, dy: -6em)[$eqt("def")$]
  ][ 
    #align(horizon)[
      #image("figs/gauge/gauge fixing 2.png", width: 30em)]
    #place(dx: 10.4em, dy: -6em)[$eqt("reversed", sub: "PTE")$]
    #place(dx: 20.5em, dy: -6em)[$eqt(pi#text[-copy])$]
  ][
    #align(horizon)[
      #image("figs/gauge/gauge fixing 3.png", width: 30em)]
    #place(dx: 9.5em, dy: -6em)[$eqt("scalar")$]
    #place(dx: 19em, dy: -6em)[$eqt(pi#text[-copy])$]
  ][
    #image("figs/gauge/gauge fixing 5.png", width: 28em)
    #place(dx: 14em, dy: -7em)[$eqt("def")$]
    #place(dx: 19.5em, dy: -7em)[$eex$]
  ]
] 

#new-section-slide[]

#slide(title: [Conclusion & outlook], )[
  // footer: [Vuillot, C., Lao, L., Criger, B., Almudéver, C. G., Bertels, K., & Terhal, B. M. (2019). Code deformation and lattice surgery are gauge fixing. New Journal of Physics, 21(3), 033028.]

  #line-by-line[
  - pushing through the encoder: discover / verify conditions for transversality.
  - code morphing: generic procedure for code search
  - gauge fixing:
    - preservation of error-correcting properties during code transformation
    - code deformation
  ]
]

#slide()[
  Thank you.
  #place(dx: 15em)[
    #qrcode
  ]
]
