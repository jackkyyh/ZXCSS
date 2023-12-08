// #import "slides.typ": *
#import "@preview/polylux:0.3.1": *
#import "@preview/physica:0.8.1":bra, ket
#import "@preview/tablex:0.0.6": tablex, hlinex, vlinex, cellx
#import "@preview/xarrow:0.2.0": xarrow

#import themes.metropolis: *

#show: metropolis-theme.with()

#set text(size: 25pt)
#set terms(separator: h(1em))

#let write_footer(footer) = {m-footer.update[#text(size: 14pt)[#footer]]}
#let reset_footer() = {m-footer.update([])}

#let eqt(sup, sub: none) = math.attach(math.limits(xarrow(sym: sym.eq, text(0.7em)[#sup])), b: text(0.7em)[#sub])


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


// #metropolis-outline

#new-section-slide[Overview]

#let many_codes = [
  #place(dx: 0cm, dy: -6.0cm)[
    $[| 4, 2, 2 |]$\ square code]
  #place(dx: 3cm, dy: 0cm)[
    $[| 5, 1, 3 |]$ code]
  #place(dx: 10cm, dy: 3cm)[
    $[| 8, 3, 2 |]$\ cubic code]
  #place(dx: 19cm, dy: -3cm)[
    $[| 15, 1, 3 |]$\ quantum \ Reed-Muller code]
  #place(dx: 21cm, dy: 4cm)[
    $[| 10, 1, 2 |]$ code]
]


#let stean_arrows = [
  #place(dx: 10cm, dy: -6.5cm)[
    $[| 7, 1, 3 |]$\ Steane code]
  #place(dx: 90pt, dy: -80pt)[#rotate(-40deg)[#xarrow(sym: sym.arrow.l, margin: 25pt, [stabilizer group])]]
  #place(dx: 220pt, dy: -60pt)[#rotate(-70deg)[#xarrow(sym: sym.arrow.l, margin: 25pt, [geometry])]]
  #place(dx: 330pt, dy: -60pt)[#rotate(70deg)[#xarrow(sym: sym.arrow, margin: 20pt, [tanner graph])]]
  #place(dx: 450pt, dy: -90pt)[#rotate(30deg)[#xarrow(sym: sym.arrow, margin: 25pt, [encoder])]]
]

#let stean_reprs = [
  #place(dx: 10pt, dy: 10pt)[$X_1 X_3 X_5 X_7$\ $X_2 X_3 X_6 X_7$\ $ dots.v $]
  #place(dx: 150pt, dy: 30pt)[#image("figs/steane/geo.svg", width: 6cm)]
  #place(dx: 350pt, dy: 30pt)[#image("figs/steane/tanner.png", width: 6cm)]
  #place(dx: 580pt, dy: -60pt)[#image("figs/steane/circ.png", width: 6cm)]
]

#slide()[
  #place(dx: 10cm, dy: -6.5cm)[
    $[| 7, 1, 3 |]$\ Steane code]
  #many_codes
]

#slide()[
  #text(silver)[#many_codes]
  
  #line-by-line[#stean_arrows]
  
  #line-by-line(start: 2)[#stean_reprs]
]

#let all_table = tablex(columns: (6em, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), rows: (1fr), align: horizon+center,
  auto-lines: false,
  (), vlinex(stroke: 2.5pt), vlinex(), vlinex(),vlinex(), vlinex(), vlinex(),
  [],[square],[Steane],[$[| 5, 1, 3 |]$],[cubic],[QRM],[$[| 10, 1, 2 |]$],
  hlinex(stroke: 2.5pt),
  [stab. group],[],[],[],[],[],[],
  hlinex(start: 0, end: 1),
  [geometry],[],[],[],[],[],[],
  hlinex(start: 0, end: 1),
  [tanner graph],[],[],[],[],[],[],
  hlinex(start: 0, end: 1),
  [circuit],[],[],[],[],[],[],
  )
  
#slide()[
  #all_table
]

#let stean_zx_reprs = [
#place(dx: 20pt, dy: -10pt)[#image("figs/steane/zx col.svg", width: 3cm)]
#place(dx: 150pt, dy: 30pt)[#image("figs/steane/zx geo.svg", width: 6cm)]
#place(dx: 390pt, dy: 10pt)[#rotate(-90deg)[#image("figs/steane/zx col.svg", width: 3cm)]]
#place(dx: 580pt, dy: -60pt)[#image("figs/steane/zx circuit.svg", width: 6cm)]
]

#slide()[
  #stean_arrows
  
  #only(1)[#stean_reprs]
  #only("2-")[#stean_zx_reprs]

  #only(3)[#text(30pt)[#place(dx: 140pt, dy: 50pt)[$=$ #h(140pt) $=$ #h(190pt) $=$]]]
]

#slide()[
  #all_table
]

#slide()[
  #tablex(columns: (6em, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr), rows: (1fr, 4fr), align: horizon+center,
  auto-lines: false,
  (), vlinex(stroke: 2.5pt), vlinex(), vlinex(),vlinex(), vlinex(), vlinex(),
  [],[square],[Steane],[$[| 5, 1, 3 |]$],[cubic],[QRM],[$[| 10, 1, 2 |]$],
  hlinex(stroke: 2.5pt),
  [ZX],[],[],[],[],[],[],
  )

  #let amorph = xarrow(sym: sym.arrow.l.r.double.long, margin: 50pt, [morphing])
  #uncover("3-")[#place(dx: 213pt, dy: -140pt)[#amorph #h(118pt) #amorph]]
  #uncover("4-")[#place(dx: 310pt, dy:-70pt )[#xarrow(sym: sym.arrow.l.r.double.long, margin: 90pt, [gauge fixing])]]
]

#new-section-slide("Quantum Error Correction")

#slide(title: [Stabilizer codes], )[

  #write_footer[Gottesman, D. (1997). Stabilizer codes and quantum error correction. California Institute of Technology.]

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
    #alternatives(start: 3, position: center)[$cal(C)$][$cal(U)(cal(C))$]][][][
    #alternatives(start: 3, position: center)[$ket(psi)$][$U$]][$arrow.r.hook$][
    #alternatives(start: 3, position: center)[$ket(overline(psi)):= E ket(psi)$][$overline(U):= E U E^dagger $]]]]
    #box[#place(dy: 1em)[#alternatives(start: 3, position: center)[*logical states*][*logical operators*]]]

    // #set math.cases(gap: 2em)
    #only(3)[
      #place(dx: 1cm)[#image("figs/pte/encoder.svg", width: 7cm)]
      #place(dx: -.3cm, dy:.7cm)[
        $k cases(#hide[1],#hide[1]) #h(20pt)
        dots.v #h(50pt) E #h(60pt) dots.v #h(20pt)$
        #set math.cases(reverse: true)
        $cases(#hide[1],#hide[1],#hide[1]) n$]]
    
    
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
  #reset_footer()
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
    / *Logical Paulis*: $overline(P) = E P E^dagger, forall P in cal(P)_k$]]][

    $=> E U = overline(U) E$
  ][
    #image("figs/pte/UE=EU.svg", width: 600pt)
    #place(dx:30pt, dy:-60pt)[
      $dots.v #h(35pt) U #h(40pt) dots.v #h(40pt)
      E #h(40pt) dots.v #h(50pt) = #h(60pt)
      dots.v #h(40pt) E #h(40pt) dots.v #h(40pt)
      overline(U) #h(40pt) dots.v$]
  ]
]

#new-section-slide[Encoders as ZX diagrams]

#slide(title: [Encoders as ZX diagrams])[

  / CSS codes: stabilizer codes whose stabilizers can be divided into\ 2 types: *X-type* or *Z-type*, i.e.,
  $ cal(S)={cal(X)_1,cal(X)_2...} union {cal(Z)_1,cal(Z)_2...} $

  #pause
  Every CSS code encoder is a phase-free ZX diagram.
  
]

#slide(title: [Encoders as ZX diagrams])[
  #write_footer[Kissinger, A. (2022). Phase-free ZX diagrams are CSS codes (... or how to graphically grok the surface code). arXiv preprint arXiv:2204.14038.]

  #columns(2)[
    Stabilizers of the *Steane code*:
    #columns(2)[
      #uncover(1, mode:"transparent")[$vec(delim:#none, Z_1 Z_3 Z_5 Z_7, Z_2 Z_3 Z_6 Z_7, Z_4 Z_5 Z_6 Z_7)$]
    #colbreak()
      $vec(delim:#none,
      #uncover("1, 3-", mode:"transparent")[$X_1 X_3 X_5 X_7$],
      #uncover("1, 4-", mode:"transparent")[$X_2 X_3 X_6 X_7$],
      #uncover("1, 5-", mode:"transparent")[$X_4 X_5 X_6 X_7$])$
    ]
  
    Logical Pauli operators:
    #columns(2)[
      #uncover(1, mode:"transparent")[$vec(delim:#none, overline(Z)=Z_1 Z_4 Z_5)$]
    #colbreak()
      $vec(delim:#none, 
      #uncover("1, 6-", mode:"transparent")[$overline(X)=X_1 X_4 X_5$])$
    ]
  
  #colbreak()
    #alternatives[][
      #image("figs/steane/zx col 0.svg", height: 250pt)][
      #image("figs/steane/zx col 1.svg", height: 250pt)][
      #image("figs/steane/zx col 2.svg", height: 250pt)][
      #image("figs/steane/zx col 3.svg", height: 250pt)][
      #image("figs/steane/zx col.svg", height: 250pt)]
  ]
]

#new-section-slide[Pushing through the encoder]

#slide(title: [Pushing Through the Encoder (PTE)])[
  #reset_footer()
  #image("figs/pte/UE=EU.svg", width: 600pt)
  #place(dx:25pt, dy:-90pt)[
      $dots.v #h(40pt) #alternatives(repeat-last: true)[$U$][*$D$*] #h(35pt) dots.v #h(40pt)
      E #h(40pt) dots.v #h(50pt) = #h(60pt)
      dots.v #h(40pt) E #h(40pt) dots.v #h(35pt)
      #alternatives(repeat-last: true)[$overline(U)$][*$overline(D)$*] #h(40pt) dots.v$]

  // #set box(stroke: 2pt + gray, inset: 15pt, radius: 10pt)

  #alternatives[][#box(stroke: 2pt + gray, inset: 15pt, radius: 10pt)[Given a ZX diagram $D$, what is the corresponding diagram $overline(D)$,\ such that the above equation holds?]][#box(stroke: 2pt + gray, inset: 15pt, radius: 10pt)[Given a ZX diagram $D$, there is an efficient procedure to derive\ the corresponding diagram $overline(D)$.]]
]


#slide(title: [Lemma: PTE])[
  #image("figs/pte/simple.svg", width: 550pt)

  #align(right)[assuming $overline(X)_1=X_1 X_2$]
]


#slide(title: [Lemma: PTE])[
  #image("figs/pte/more wires.svg", width: 350pt)
]

#slide(title: [Lemma: PTE])[
  #image("figs/pte/general.svg", width: 550pt)
]

#slide(title: [The $[| 4, 2, 2 |]$ code])[
  
  $overline(X)_1=X_1 X_2, overline(Z)_1=Z_1 Z_3,\
  overline(X)_2=X_1 X_3, overline(Z)_2=Z_1 Z_2.$

  #pause
  #image("figs/pte/422.svg", width: 500pt)
]

#slide(title: [Example: $overline(X)_1$])[

  #box(image("figs/pte/x/1.svg", width: 7em), baseline: 50%)
  #pause
  #h(.5em)#eqt[PTE]#h(.5em)
  #box(image("figs/pte/x/2.svg", width: 7.6em), baseline: 35%)
  #pause
  #h(.5em)#eqt[$pi$-copy]#h(.5em)
  #box(image("figs/pte/x/3.svg", width: 7em), baseline: 50%)
]

#slide(title: [Example: $X_1 X_2$ measurement])[
  #box(image("figs/pte/Mx/3.svg", width: 7em), baseline: 50%)
  #pause
  #h(.5em)#eqt[unfusion]#h(.5em)
  #box(image("figs/pte/Mx/2.svg", width: 7.3em), baseline: 37%)
  #pause
  #h(.5em)#eqt([reversed], sub: [PTE])#h(.5em)
  #box(image("figs/pte/Mx/1.svg", width: 7em), baseline: 50%)

]


#slide(title: [Example: $overline(T)$ gate])[
  #box(image("figs/pte/t/1.svg", width: 7em), baseline: 50%)
  #pause
  #h(.5em)#eqt[PTE]#h(.5em)
  #box(image("figs/pte/t/2.svg", width: 7em), baseline: 33%)
  #pause
  #h(.5em)#eqt[unfusion]#h(.5em)
  #box(image("figs/pte/t/3.svg", width: 8em), baseline: 38%)
]

#slide(title: [Example: $overline(H)$ gate])[
  #box(image("figs/pte/h/1.svg", height: 100pt), baseline: 40%)
  #pause
  #h(.3em)#eqt[Euler]#h(.3em)
  #box(image("figs/pte/h/2.svg", height: 110pt), baseline: 40%)
  #pause
  #h(.3em)#eqt[PTE]#h(.3em)
  #box(image("figs/pte/h/3.svg", height: 140pt), baseline: 30%)

  #pause
  #h(4em)#eqt[sc]#h(.5em)
  #box(image("figs/pte/h/4.svg", width: 400pt), baseline: 40%)
]

#new-section-slide("Code morphing")

#slide(title: "Code morphing")[
  #write_footer[Vasmer, M., & Kubica, A. (2022). Morphing quantum codes. PRX Quantum, 3(3), 030319]

  // #pause

  Given a *parent code* $cal(C)_("parent")$,
  with stabilizers $cal(S)$ and physical qubits $Q$,

  choose a subset $R subset Q$.

  / *child code*: $cal(C)_("child")$ whose stabilizers are
  $ cal(S)_("child"):={S in cal(S): op("supp")(S) subset R}. $
]

#slide(title: "Code morphing")[

  Consider the encoders $E_("parent")$ and $E_("child")$, which are Cliffords,

  / *morphed code*: $cal(C)_("morphed")$ whose encoder is
  $ E_("morphed"):= (#text(gray)[$I^(times.circle|Q backslash R|)times.circle$]  E^dagger_("child"))E_("parent"). $
]

#slide(title: "Code morphing")[
  #reset_footer()

  #grid(columns: (21em, 1fr))[
  Given an encoder $E_("parent") $ and a subset $R subset Q$,
  
    #alternatives[][
      #box(width: 19em)[1. Unfuse all #text(olive)[green] spiders which are supported *partially* on $R$.]][
      #box(width: 19em)[2. Add an identity #text(red)[red] spider between each pair of unfused #text(olive)[green] spiders.]][
      #box(width: 22em)[3. let #text(purple)[$E_("child")$] be the subdiagram enclosed by $R$;\ let #text(blue)[$E_("morphed")$] be the subdiagram enclosed by $Q backslash R$]]
  ][
    #alternatives()[
      #h(60pt)#text(purple)[$R={2,3,6,7}$]
      #image("figs/morph/2367/1.svg", width: 8em)
      #h(90pt)$E_("parent")$][
      #image("figs/morph/2367/2-0.svg", width: 8em)][
      #image("figs/morph/2367/2.svg", width: 8em)][
      #image("figs/morph/2367/3.svg", width: 9em)]
    ]
]

#slide(title: [Code morphing])[
  #place()[#text(purple)[$R={2,3,6,7}$]]

  #set align(center)
  #box[#alternatives[$E_("parent")$][$E_("steane")$]]
  #box(baseline: 50%)[#image("figs/morph/2367/1.svg", height: 200pt)]
  #h(10pt)$=$#h(10pt)
  #box(baseline: 50%)[#image("figs/morph/2367/3.svg", height: 300pt)]
  #box[
    #place(dy: -100pt)[#text(purple)[#alternatives[$E_("child")$][$E_([| 4, 2, 2 |])$]]]
    #place(dy: 80pt)[#text(blue)[#alternatives[$E_("morphed")$][$E_([| 5, 1, 3 |])$]]]]
]


#slide(title: [Code morphing])[
  $R={4,5,6,7}$
  // #set align(center)
  
  #one-by-one(start: 1)[
    #box(image("figs/morph/4567/1.svg", width: 170pt), baseline: 50%)
    #box(place(dx:-5em, dy: 4em)[$E_"steane"$])][
    $=$ #box(image("figs/morph/4567/2.svg", width: 220pt), baseline: 40%)][
    $=$ #box(image("figs/morph/4567/3.svg", width: 270pt), baseline: 40%)
    #box()[
      #place(dx: -10em, dy: 4em)[$E_([| 6, 1, 1 |])$]
      #place(dx: -5em, dy: 4em)[$E_([| 4, 3, 1 |])$]]
  ]
]

#slide(title: [Code morphing])[
  #image("figs/morph/qrm.svg", width: 650pt)
  #h(100pt)$E_("QRM")$
  #h(150pt)$E_([| 8, 3, 2 |])$
  #h(90pt)$E_([| 10, 1, 2 |])$
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
  #write_footer[Anderson, Jonas T. et al. “Fault-tolerant conversion between the Steane and Reed-Muller quantum codes.” Physical review letters 113 8]

  #table(
    align: (auto, center, center, center),
    columns: (auto, auto, auto, auto),
    inset: 10pt,
    [], text(gray)[Steane], [ExSteane], [QRM],
    [qubits], text(gray)[$7$], $15$, $15$,
    // [transversal gates], text(gray)[$op("CNOT"), S, H$], [$op("CNOT"), S, #strong[H]$], [$op("CNOT"), S, #strong[T]$]
    [\# stabilizers], text(gray)[6], [14], [14]
  )
  $E_"ex"=E_"steane" times.circle ket(Psi)$, where
  $ ket(Psi):=1/sqrt(2)(ket(0)times.circle (E_"steane" ket(0))+ket(1) times.circle(E_"steane" ket(1))) $

]

#slide(title: [Quantum subsystem code], )[
  #write_footer[Kribs, David W. et al. “Unified and generalized approach to quantum error correction.” Physical review letters 94 18 (2004): 180501 .]

  / *Gauge group*: any subgroup $cal(G) < cal(P)_n$
  
  / *Stabilizer group*: $cal(S):= cal(N)(cal(G)) sect cal(G)={S in cal(G): S G = G S, forall G in cal(G)}$
  
  / *Gauge operators*: $cal(L)_g:= cal(G) slash cal(S)$
  #h(10em)$tilde.equiv angle.l L_1^X, L_1^Z, ..., L_t^X, L_t^Z angle.r < cal(P)_n$
  
  #place(dx: 590pt, dy: -20pt)[#image("figs/gauge/venn.svg", width: 130pt)]
  #place(dx: 655pt, dy: -30pt)[$cal(G)$]
  #place(dx: 600pt, dy: 30pt)[$cal(L)_g #h(35pt) cal(S)$]
]

#slide(title: "Subsystem code encoders as ZX diagrams")[
  #reset_footer()
  #align(center)[#image("figs/gauge/subsys.svg", width: 300pt)]
]



#slide(title: [The $bracket.l.double 15, 1, 3, 3 bracket.r.double$ subsystem code])[
  $cal(G)_"sub" :=cal(S)_"ex" union cal(S)_"qrm"$

  $=> cal(S)_"sub" = cal(S)_"ex" sect cal(S)_"qrm"$

  $=>cal(L)_g = cal(S)_"ex" dot.circle cal(S)_"qrm" = angle.l L_1^X, L_2^X, L_3^X, L_1^Z, L_2^Z, L_3^Z angle.r$
x
  #place(dx: 540pt)[
  #align(right)[#image("figs/gauge/vecc.svg", width: 200pt)]]
  #place(dx: 605pt, dy: -10pt)[$cal(S)_"ex"$ #h(85pt) $cal(S)_"qrm"$]
  #place(dx: 620pt, dy: 65pt)[$cal(S)_"sub"$]
]

#slide(title: "QRM")[
  #align(center)[#image("figs/gauge/sub -> qrm.svg", width: 25em)]
  #place(dx: 6em, dy: -6em)[$E_"sub"$]
  #place(dx: 15em, dy: -6em)[$=$]
  #place(dx: 21.5em, dy: -6em)[$E_"qrm"$]
]

#slide(title: "QRM")[
  #one-by-one[
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 1.svg", width: 5.5em)]][
    #h(0.5em)#eqt[def]#h(0.5em)
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 2.svg", width: 5.5em)]][
    #h(0.3em)#eqt[$pi$-copy]#h(0.3em)
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 3.svg", width: 5.5em)]][
    #h(0.3em)#eqt[fusion]#h(0.3em)
    #box(baseline: 50%)[#image("figs/gauge/sub -> qrm proof 4.svg", width: 5em)]]
] 

#slide(title: "ExSteane")[
  #align(center)[#image("figs/gauge/sub -> ex.svg", width: 25em)]
  #place(dx: 6em, dy: -6em)[$E_"sub"$]
  #place(dx: 16em, dy: -6em)[$=$]
  #place(dx: 22em, dy: -6em)[$E_"ex"$]
]

#slide(title: [Gauge fixing (QRM $->$ ExSteane)], )[
  #write_footer[Vuillot, Christophe et al. “Code deformation and lattice surgery are gauge fixing.” New Journal of Physics 21 (2018): n. pag.]
  #alternatives[
    #image("figs/gauge/fixing/0.svg", width: 18em)
    #place(dx: 2.5em, dy: -6em)[$E_"qrm"$]
  ][
    #image("figs/gauge/fixing/1.svg", width: 18em)
    #place(dx: 2.5em, dy: -6em)[$E_"qrm"$]
  ][
    #image("figs/gauge/fixing/2.svg", width: 18em)
    #place(dx: 2.5em, dy: -6em)[$E_"qrm"$]
  ][
    #image("figs/gauge/fixing/3.svg", width: 29.5em)
    #place(dx: 2.5em, dy: -6em)[$E_"qrm"$]
    #place(dx: 20em, dy: -6em)[$=$]
    #place(dx: 25em, dy: -6em)[$E_"ex"$]
  ]
  #alternatives(start: 2, position: top)[
    / *Step 1*: measure gauge operators $L_1^X,L_2^X,L_3^X$, \ obtaining outcomes $k_1, k_2, k_3 in ZZ_2$.
    ][
    / *Step 2*: For each $k_i=1$, apply $L_i^Z$.
    ]
]


#slide(title: [Gauge fixing (QRM $->$ ExSteane)])[
  #reset_footer()
  #image("figs/gauge/sub -> ex gauge.svg", width: 30em)
    #place(dx: 2.5em, dy: -6em)[$E_"qrm"$]
    #place(dx: 16.5em, dy: -6em)[$=$]
    #place(dx: 22em, dy: -6em)[$E_"ex"$]
]


#slide(title: [Gauge fixing (QRM $->$ ExSteane, proof)])[
  #alternatives[
    #align(horizon)[
      #image("figs/gauge/gauge fixing.svg", width: 30em)]
    #place(dx: 2.5em, dy: -6em)[$E_"sub"$]
    #place(dx: 14em, dy: -6em)[#eqt[def]]
  ][ 
    #align(horizon)[
      #image("figs/gauge/gauge fixing 2.svg", width: 30em)]
    #place(dx: 10.4em, dy: -6em)[#eqt([reversed], sub: [PTE])]
    #place(dx: 20.5em, dy: -6em)[#eqt[$pi$-copy]]
  ][
    #align(horizon)[
      #image("figs/gauge/gauge fixing 3.svg", width: 30em)]
    #place(dx: 9.5em, dy: -6em)[#eqt[scalar]]
    #place(dx: 19em, dy: -6em)[#eqt[$pi$-copy]]
  ][
    #image("figs/gauge/gauge fixing 5.svg", width: 28em)
    #place(dx: 14em, dy: -7em)[#eqt[def]]
    #place(dx: 19.5em, dy: -7em)[$E_"ex"$]
  ]
] 

#new-section-slide[Conclusion]

#slide(title: [Conclusion & outlook], )[
  // #write_footer[Vuillot, Christophe et al. “Code deformation and lattice surgery are gauge fixing.” New Journal of Physics 21 (2018): n. pag.]

  #line-by-line[
  - pushing through the encoder: discover / verify conditions for transversality.
  - code morphing: generic procedure for code search
  - gauge fixing:
    - preservation of error-correcting properties during code transformation
    - code deformation
  ]
]

#let qrcode = align(center)[#grid(columns: 1, image("figs/qr.svg", width: 8em), [arXiv:2307.02437])]

#slide()[
  Thank you.
  #place(dx: 15em)[
    #qrcode
  ]
]
