#import "slides.typ": *
#import "my.typ": *


#show: slides.with(
    authors: ([*Jiaxin Huang*], [Sarah Meng Li], [Lia Yeh], [Aleks Kissinger], [Michele Mosca], [Michael Vasmer]),
    short-authors: [#text(weight: "bold")[J. HUANG], S. M. Li, L. Yeh, A. Kissinger, M. Mosca, M. Vasmer],
    title: text(rgb("2B3467"))[Graphical CSS Code Transformation Using ZX Calculus],
    short-title: [Graphical CSS Code Transformation Using ZX Calculus],
    date: [July 2023],
    extra: [arXiv:2307.02437],
    theme: slides-default-theme(color: rgb("2B3467"))
)

// #show link: set text(blue)
// #set text(font: "Inria Sans")
// #show heading: set text(font: "Vollkorn")
// #show raw: set text(font: "JuliaMono")

#set terms(separator: h(1em))
#show strong: set text(rgb("EB455F"))

#slide(theme-variant: "title slide")


#new-section[Overview]

#slide()[

  #place(dx: 0em, dy: -5em)[
    #alternatives[
    $dbracket(4, 2, 2)$\ square code][
    #image("figs/relations/tanner/square.png", height: 4em)][
    #image("figs/relations/lattice/square.png", height: 3em)][
    #image("figs/relations/circuit/square.png", height: 3em)][
    $dbracket(4, 2, 2)$\ square code]]
  
  #place(dx: 3em, dy: 1em)[
    #alternatives[
    $dbracket(5, 1, 3)$ code][
    #image("figs/relations/tanner/5.png", height: 4em)][
    #image("figs/relations/lattice/5.png", height: 3em)][
    #image("figs/relations/circuit/5.png", height: 3em)][
    $dbracket(5, 1, 3)$ code]]
    
  #place(dx: 10em, dy: -5.5em)[
    #alternatives[
    $dbracket(7, 1, 3)$\ Steane code][
    #image("figs/relations/tanner/steane.png", height: 4em)][
    #image("figs/relations/lattice/steane.png", height: 5em)][
    #image("figs/relations/circuit/steane.png", height: 6em)][
    $dbracket(7, 1, 3)$\ Steane code]]

  #place(dx: 10em, dy: 4em)[
    #alternatives[
    $dbracket(8, 3, 2)$\ cubic code][
    #image("figs/relations/tanner/cubic.png", height: 4em)][
    #image("figs/relations/lattice/cubic.png", height: 5em)][
    #image("figs/relations/circuit/cubic.png", height: 4em)][
    $dbracket(8, 3, 2)$\ cubic code]]
  
  #place(dx: 19em, dy: -3em)[
    #alternatives[
    $dbracket(15, 1, 3)$\ quantum \ Reed-Muller code][
    #image("figs/relations/tanner/qrm.png", height: 4em)][
    #image("figs/relations/lattice/qrm.png", height: 5em)][
    #image("figs/relations/circuit/qrm.png", height: 7em)][
    $dbracket(15, 1, 3)$\ quantum \ Reed-Muller code]]
  
  #place(dx: 21em, dy: 4.5em)[
    #alternatives[
    $dbracket(10, 1, 2)$ code][
    #image("figs/relations/tanner/10.png", height: 4em)][
    #image("figs/relations/lattice/10.png", height: 4em)][
    #image("figs/relations/circuit/10.png", height: 5em)
    ][
    $dbracket(10, 1, 2)$ code]]

  #show: pause(5)
  #place(dx:7em, dy:-1em)[#rotate(10deg)[*$arrow.l.long$*]]
  #place(dx:7.2em, dy:1.5em)[#rotate(-40deg)[*$arrow.l.long$*]]
  #place(dx:4em, dy:0em)[#rotate(0deg)[*morphing*]]
  
  #place(dx:16em, dy:-1em)[#rotate(10deg)[*$limits(arrow.l.r.long)^(#text[gauge\ fixing])$*]]
  
  #place(dx:17em, dy:5.5em)[#rotate(-30deg)[*$arrow.l.long$*]]
  #place(dx:22.5em, dy:6em)[#rotate(90deg)[*$arrow.r.long$*]]
  #place(dx:18em, dy:6em)[#rotate(0deg)[*morphing*]]
]




#slide(title: "Code morphing")[
    $est$
    #box(image("figs/steane/zx geo.png", width: 200pt), baseline: 50%)
    $==>$
    // #box(image("figs/morph/block.png", width: 270pt), baseline: 50%)
    #box()[
      #place(dy: -3em)[$E_(dbracket(4, 2, 2))$]
      #place(dy: 3em)[$E_(dbracket(5, 1, 3))$]]
    // $E$ $E$
    // #place(dy: 2em)[$E_(bracket.l.double 4, 1, 2 bracket.r.double)\ \ E_(#text("steane"))$]
]


#slide(title: "Gauge fixing")[
  #image("figs/gauge/qrm -> steane.png", height: 13em)
  #place(dx: 13.5em, dy: -8em)[$=$]
  #place(dx: 2em, dy: -8em)[$eqrm$]
  #place(dx: 18.6em, dy: -11em)[$est$]
  #place(dx: 19em, dy: - 4em)[$ket(Psi)$] 
]
 
#new-section("Quantum Error Correction")

#slide(title: [Stabilizer codes], footer: [Gottesman, D. (1997). Stabilizer codes and quantum error correction. California Institute of Technology.])[
  // #only(1)[
  //   #coloremph[Code space] #h(1em) $cal(C) subset cal(H)^(times.circle n)$
     
  //   #coloremph[Stabilizers] #h(1em) $cal(S):= {P in cal(P)_n: P ket(psi)=ket(psi), forall ket(psi)in cal(C)}$]
  // #only("2-")[
    / *Stabilizers*: $cal(S) < cal(P)_n$, s.t. $cal(S)$ is Abelian

    / *Code space*: $cal(C):={ket(psi) in cal(H)_n:S ket(psi)=+ket(psi),forall S in cal(S)}$
  // ]

  #only("2")[
    #align(center)[
      #grid(columns: 5, rows: 2, row-gutter: 30pt, column-gutter: 10pt)[
        $dim(cal(S))$][$+$][$log_2 dim cal(C)$][$=$][$n$][
        *$m$*][$+$][*$k$*][$=$][$n$]
    ]
  ]

  #only("3-")[

    / *Logical (Pauli) operators*: $cal(L):=cal(N)(cal(S)) slash cal(S)$ #only("3")[
      , where $ cal(N)(cal(S)):={P in cal(P)_n: P S=S P, forall S in cal(S)} $
    ]
    #only(4)[#h(13.3em)
      $=angle.l overline(X)_1, overline(Z)_1, overline(X)_2, overline(Z)_2, ..., overline(X)_k, overline(Z)_k angle.r$
    ]
  ]
]


#slide(title: [Encoders])[
  $cal(L)=angle.l overline(X)_1, overline(Z)_1, overline(X)_2, overline(Z)_2, ..., overline(X)_k, overline(Z)_k angle.r$

  #uncover(2)[#h(7em)$arrow.t.b E$]
  
  $cal(P)_k=angle.l X_1, Z_1, X_2, Z_2, ..., X_k, Z_k angle.r$
  
  #show: pause(3)
  $exists #text[Clifford operator] E, #text[s.t.] forall P in cal(P)_k$,
  $ overline(P) = E P E^dagger in cal(L).  $
  
]

#slide(title: [Logical states \& operators])[
  #set align(horizon)
  $ket(overline(psi)) &:= E ket(psi)\
  overline(U) &:= E U E^dagger$

  // #grid(columns: (9em ,auto), rows: 2, row-gutter: 1em)[
  //   ][
  //   $ket(psi)$ 
  //   #box(baseline:45%)[#image("figs/pte/Epsi.png", height: 5em)#place(dx:3.5em, dy:-3em)[$E$]]
  //   $ket(overline(psi))$][
  //   ][
  //   #image("figs/pte/Epsi.png", height: 5em)]
]


#slide(title: "Calderbank-Shor-Steane (CSS) Codes")[
  CSS codes are stabilizer codes whose \ 
  #h(3em) stabilizers can be divided into 2 types: *X-type* or *Z-type*, i.e.,
  $ cal(S)={cal(X)_1,cal(X)_2...} union {cal(Z)_1,cal(Z)_2...} $
]

#slide(title: "Transverasl gates")[
  $overline(U) &:=E U E^dagger$
]

#slide(title: "Transversal gates")[
  #columns(2)[
    7-qubit Steane code:
    $ overline(X) &=X_1 X_2 X_3, \
      overline(H) &=H^(times.circle 7), \
      overline(S) &=S^(times.circle 7) $

    #colbreak()
    15-qubit QRM code:
    $ overline(X) &=X_1 X_2 ... X_7,\
      overline(T) &=T^(times.circle 15) $
  ]
]

#new-section("ZX calculus")

#slide(title: "ZX calculus")[

  A *diagrammatic* language \
  #h(3em) to reason about quantum information processes.

]



#slide(title: [Encoder as ZX diagram], footer: [Kissinger, A. (2022). Phase-free ZX diagrams are CSS codes (... or how to graphically grok the surface code). In 19th International Conference on Quantum Physics and Logic.])[
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
    #alternatives(start: 2)[
      #image("figs/steane/zx col 0.png", width: 50pt)][
      #image("figs/steane/zx col 1.png", width: 110pt)][
      #image("figs/steane/zx col 2.png", width: 110pt)][
      #image("figs/steane/zx col 3.png", width: 110pt)][
      #image("figs/steane/zx col.png", width: 130pt)]
      // [ #box(image("figs/steane/zx col.png", width: 130pt), baseline: 50%)$=$ #box(image("figs/steane/zx geo.png", width: 200pt), baseline: 50%)]
  ]
]


#new-section[Pushing through the encoder]

#slide(title: [Pushing through the encoder])[
  $overline(U) = E U E^dagger$

  $=> E U = overline(U) E$
  #uncover(2)[
    #image("figs/pte/UE=EU.png", width: 600pt)
    #place(dx:2.9em, dy:-2.5em)[$U$]
    #place(dx:7em, dy:-2.5em)[$E$]
    #place(dx:16.5em, dy:-2.5em)[$E$]
    #place(dx:20.8em, dy:-2.5em)[$overline(U)$]
  ]
]

#slide()[
  #image("figs/pte/general.png", width: 23em)

  #align(right)[assuming $overline(X)=X_1 X_2$]
]

#slide(title: [Sanity check: $overline(X)$])[

  #image("figs/pte/x.png", width: 27em)
]

#slide(title: [Example: $overline(X)$ measurement])[
  #image("figs/pte/x measurement.png", width: 25em)
]


#slide(title: [Example: T gate])[
  #image("figs/pte/t.png", width: 25em)

  #align(right)[assuming $overline(Z)=Z_2 Z_3$]
]

#slide(title: [Example: H gate])[
  #image("figs/pte/h.png", width: 28em)
]


// #slide()[
//   #image("figs/pte/pte.png", width: 70%)

//   #show: pause(2)
//   #image("figs/pte/pte trick.png", width: 70%)
// ]

#new-section(" ")

#slide(title: "Code morphing")[
  Given a stabilizer code $cal(C)(cal(S))$ with physical qubits $Q$,

  choose a subset $R subset Q$.

  Let $cal(S)(R):={S in cal(S): op("supp")(S) subset R} < cal(S).$

  This defines a *child* code $cal(C)(R)$

]

#slide(title: "Code morphing")[
  Consider the encoders $E_cal(C)$ and $E_(cal(C)(R))$.

  Let $ E_(backslash R):= (I^(times.circle|Q backslash R|)times.circle E^dagger_(cal(C)(R)) )E_cal(C). $
  
  This defines the encoder for the *morphed* code
]

#slide(title: "Code morphing")[
  #set align(center)

  \
  #place()[$Q={1,2,3,4,5,6,7}\ R={2,3,6,7}$]
  

  #one-by-one[
    #box(image("figs/steane/zx geo.png", height: 7em), baseline: 50%)
    #box(place(dx:-9.5em, dy: -1em)[$est$])
    ][
    // $=$ #box(image("figs/morph/unfuse.png", height: 11em), baseline: 40%)][
    // $=$ #box(image("figs/morph/block.png", height: 10em), baseline: 40%)
    #box()[
      #place(dx: -0.5em, dy: -4em)[$E_(dbracket(4, 2, 2))$]
      #place(dx: -0.5em, dy: 1em)[$E_(dbracket(5, 1, 3))$]]
  ]
]

#slide(title: "Code morphing")[
  $R={4,5,6,7}$
  #set align(center)

  #one-by-one[
    #box(image("figs/steane/zx geo.png", width: 170pt), baseline: 50%)
    #box(place(dx:-5em, dy: 4em)[$est$])][
    // $=$ #box(image("figs/morph/bad unfuse.png", width: 220pt), baseline: 40%)][
    // $=$ #box(image("figs/morph/bad unfuse block.png", width: 270pt), baseline: 40%)
    #box()[
      #place(dx: -10em, dy: 4em)[$E_(dbracket(6, 1, 1))$]
      #place(dx: -5em, dy: 4em)[$E_(dbracket(4, 3, 1))$]]
  ]
]

#slide(title: "Steane & quantum Reed-Muller(QRM)")[

  #table(
    align: (auto, center, center),
    columns: (auto, auto, auto),
    inset: 10pt,
    [], [Steane], [QRM],
    [qubits], $7$, $15$,
    [transversal gates], [$op("CNOT"), S, #strong[H]$], [$op("CNOT"), S, #strong[T]$]
  )
]


#slide(title: "Steane & quantum Reed-Muller(QRM)")[
  #table(
    align: (auto, center, center, center),
    columns: (auto, auto, auto, auto),
    inset: 10pt,
    [], [#text(gray)[Steane]], [ExQRM], [QRM],
    [qubits], text(gray)[$7$], $15$, $15$,
    [transversal gates], text(gray)[$op("CNOT"), S, $], [$op("CNOT"), S, #strong[H]$], [$op("CNOT"), S, #strong[T]$]
  )
  $eex=est times.circle ket(Psi)$, where
  $ ket(Psi):=1/sqrt(2)(ket(0)est ket(0)+ket(1) est ket(1)) $

]

#slide(title: [Quantum subsystem code], footer: [David Kribs, Raymond Laflamme & David Poulin (2005): Unified and Generalized Approach to Quantum Error Correction. Physical Review Letters, 94.])[

  / *Gauge group*: $cal(G) < cal(P)_n$
  
  / *Stabilizer group*: $cal(S):= cal(N)(cal(G)) sect cal(G)={S in cal(G): S G = G S, forall G in cal(G)}$
  
  / *Gauge operators*: $cal(L)_g:= cal(G) slash cal(S)$
  
  #place(dx: 19em)[#image("figs/gauge/venn.png", width: 140pt)]
]

#slide(title: "Subsystem code encoder as ZX diagram")[
  #set align(center)

  #image("figs/gauge/subsys.png", width: 300pt)

]

#slide(title: [The $bracket.l.double 15, 1, 3, 3 bracket.r.double$ subsystem code])[
  $gsub :=sex union sqrm$

  $=> ssub = sex sect sqrm$

  $=>cal(L)_g = sex dot.circle sqrm = angle.l L_1^X, L_2^X, L_3^X, L_1^Z, L_2^Z, L_3^Z angle.r$
]

#slide(title: "QRM")[
  #set align(center)
  #image("figs/gauge/sub -> qrm.png", width: 25em)
  #place(dx: 6em, dy: -6em)[$esub$]
  #place(dx: 15em, dy: -6em)[$=$]
  #place(dx: 21.5em, dy: -6em)[$eqrm$]
]

#slide(title: "QRM")[
  #set align(center)
  #image("figs/gauge/sub -> qrm proof.png", width: 30em)
  #place(dx: 6.5em, dy: -4em)[$:=$]
  // #place(dx: 14.2em, dy: -4em)[$eqcopy$]
  // #place(dx: 22.5em, dy: -4em)[$eqfusion$]
]

#slide(title: "ExQRM")[
  #set align(center)
  #image("figs/gauge/sub -> ex.png", width: 25em)
  #place(dx: 6em, dy: -6em)[$esub$]
  #place(dx: 15em, dy: -6em)[$=$]
  #place(dx: 22em, dy: -6em)[$eex$]
]

#slide(title: "Gauge fixing")[
  
  / *Step 1*: measure gauge operators $L_1^X,L_2^X,L_3^X$, \ obtaining outcomes $k_1, k_2, k_3 in ZZ_2$.
  
  / *Step 2*: For each $k_i=1$, apply $L_i^Z$.
]


#slide(title: "Gauge fixing")[
  #alternatives[
    #image("figs/gauge/gauge fixing.png", width: 30em)
    #place(dx: 2.5em, dy: -6em)[$esub$]
    #place(dx: 14em, dy: -6em)[$=$]
  ][
    #image("figs/gauge/gauge fixing 2.png", width: 30em)
    // #place(dx: 10.4em, dy: -4em)[$eqrpte$]
    // #place(dx: 20.5em, dy: -4em)[$eqcopy$]
  ][
    #image("figs/gauge/gauge fixing 3.png", width: 30em)
    #place(dx: 9.5em, dy: -5em)[$=$]
    // #place(dx: 19em, dy: -5em)[$eqcopy$]
  ]
]

#slide(title: "Open questions")[
  - code mrophing: generic recipe for code discovery
  - PTE: transversality
  - gauge fixing: 
    - error-correcting properties during code switching
    - code deformation
]

#slide()[
  Thank you.
]


#slide(title: "error propogation")[
  
  circuit
]

#slide(title: "Pushing through the encoder")[
  
  backup: generic proof, logical X are transversal
  
]

#slide(title: "EQRM & Steane code")[
  seperable state
]

#slide(title: "Logical Pauli operators")[

  #uncover(1, mode: "transparent")[
    $overline(P)=E P E^dagger$
  ]
  
  #one-by-one(start: 2)[
    The *centralizers* of $cal(S)$:
  $ cal(N)(cal(S)):={P in cal(P)^(times.circle n): P M = M P,forall M in cal(S)} $
  ][

    $cal(N)(cal(S)) \/ cal(S)={I, overline(X)_1, overline(Z)_1, ..., overline(X)_k, overline(Z)_k}$
  ][
    
    - (anti-commuting Pauli pairs) 
  ]
]

#slide(theme-variant: "wake up")[
  Backup
]


#slide()[
  #let pc = 1
  
  #align(center + bottom)[#grid(columns: (1fr, 1fr, 1fr))[
    #image("figs/relations/tanner/steane.png", height: 180pt)
    tanner graph][
    #{ pc += 1 } #show: pause(pc)
    #image("figs/steane/lattice.png", height: 150pt)
    geometry][
    #{ pc += 1 } #show: pause(pc)
    #image("figs/relations/circuit/steane.png", height: 130pt)
    encoder circuit]
  ]
  
  #{ pc += 1 } #show: pause(pc)
  #align(center)[*can we unify all these representations?*]
]

#slide()[
  #let pc = 1
  
  #align(center+bottom)[#grid(columns: (1fr, 1fr, 1fr))[
    #image("figs/relations/tanner/steane.png", width: 60pt)][
    #image("figs/steane/lattice.png", width: 120pt)][ 
    #image("figs/relations/circuit/steane.png", width: 130pt)]]

  #only(1)[#place(center, dy: 50pt)[
    *ZX normal form*]]
  
  #only("2-")[#place(center, dy: 200pt)[
    *ZX normal form*]]
    
  #align(center + horizon)[#grid(columns: (1fr, 1fr, 1fr))[
    #{ pc += 1 } #show: pause(pc)
    #image("figs/steane/zx col.png", height: 180pt)][
    #{ pc += 1 } #show: pause(pc)
    #place(dx: -20pt, dy: 80pt)[$=$]
    #image("figs/steane/zx geo.png", height: 180pt)][
    #{ pc += 1 } #show: pause(pc)
    #place(dx: -20pt, dy: 60pt)[$=$]
    #image("figs/steane/zx circuit.png", height: 130pt)]
  ]
  
]

#slide(title: "Quantum Error Correction (QEC)")[
  
  #line-by-line[
  - quantum computers are *noisy*
  - reliable quantum computation?
  - *detect* and *correct* every occurrence of error
  ]
]


#new-section("Quantum Error Correction")

#let cell = align.with(center)

#slide(title: [#uncover(2)[Repetition code]])[

  $ket(0) limits(-->)^(#uncover(2)[$#text[encoder] E$]) ket(000)\ ket(1) limits(-->)^(#hide[$#text[encoder] E$])ket(111)$

]

#slide(title: "Repetition code")[
  $alpha ket(0)+beta ket(1) limits(-->)^(#text[encoder] E) alpha ket(000)+beta ket(111)$
  
  #show: pause(2)
  $MM_(Z Z I), MM_(Z I Z)$
  
]


#slide(title: "Repetition code")[
  If $ket(psi)=alpha ket(000)+beta ket(111)$:

  $quad quad => (Z Z I) ket(psi) &=alpha (Z Z I) ket(000)+beta (Z Z I) ket(111) \
    &= alpha ket(000)+beta ket(111)\
    &= + ket(psi)$
]


// #slide(title: "Repetition code")[
//   If $ket(psi)= #coloremph[$X I I($] alpha ket(000)+beta ket(111) #coloremph[$)$]=alpha ket(#coloremph[1]00)+beta ket(#coloremph[0]11)$:

//   $quad quad => (Z Z I) ket(psi) &=alpha (Z Z I) ket(#coloremph[1]00)+beta (Z Z I) ket(#coloremph[0]11) \
//     &= #coloremph[-] alpha ket(#coloremph[1]00) #coloremph[-] beta ket(#coloremph[0]11)\
//     &= #coloremph[-] ket(psi)$
// ]

// #slide(title: "Stabilizer formalism")[
//   #coloremph[Code space] $cal(C):={ket(psi): ket(psi)=alpha ket(000)+beta ket(111):alpha, beta in CC}$

//   #coloremph[Stabilizers] $cal(S):= angle.l Z Z I, Z I Z angle.r = angle.l Z_1 Z_2, Z_1 Z_3 angle.r$

//   #coloremph[Correctable errors] $cal(E):={X I I, I X I, I I X}={X_1, X_2, X_3}$
  
// ]


#slide(title: "Examples")[
  $cal(S):= angle.l Z Z I, Z I Z angle.r & => cal(C) & = {alpha ket(000)+beta ket(111):alpha, beta in CC}\
                                                & & = op("span"){ket(000),ket(111)}\
  cal(S):= angle.l Z Z, X X angle.r & => cal(C)& = {1/sqrt(2)(ket(00)+ket(11))}\
  
  cal(S):= angle.l X Z Z X I, I X Z Z X, \
      #h(3.1em) X I X Z Z, Z X I X Z angle.r & => cal(C) &= ?$

  #h(13em) #alternatives(start: 1)[][$log dim cal(C)=?$][$log dim cal(C)=n - dim cal(S)=5-4=1$]
]

#slide(title: "Logical operators")[
  #one-by-one(start: 1)[
    $ket(alpha) limits(-->)^U ket(beta) #h(2em)$
  ][
    
    $#h(0.3em)#text(size: 30pt)[$arrow.b$] #text(size: 18pt)[E] quad quad #text(size: 30pt)[$arrow.b$] #text(size: 18pt)[E]$
    
    $ket(overline(alpha)) #uncover("3-")[$limits(-->)^(overline(U)?)$] ket(overline(beta)) #h(2em) $
    
  ][][
    $=> overline(U) E=E U$ or  $overline(U)=E U E^dagger$
  ][
    
    In general, $overline(U)$ can be very complicated.]
]


#slide(title: [Transversal gates, footer: [Gottesman, D. (2000). Fault-tolerant quantum computation with local gates. Journal of Modern Optics,
47(2-3), 333-345]])[
  
  // $overline(U)$ is #coloremph[transversal] if
  $ overline(U)= times.circle.big_(i=1)^n V_i $

]

#slide(title: "Examples")[
  $cal(S)_1:= angle.l Z Z I, Z I Z angle.r\
  cal(S)_2:= angle.l Z Z, X X angle.r\
  
  cal(S)_3:= angle.l X Z Z X I, I X Z Z X, X I X Z Z, Z X I X Z angle.r$
]


// #slide(title: "Teleportation")[
//     #image("figs/teleportation.png", width: 600pt)
// ]

// #slide(title: "Teleportation")[
//     #image("figs/tele.png", width: 600pt)
// ]

#slide(title: "ZX diagram")[

  Z spider:
  $ #image("figs/rules/green.png", width: 20%) = underbrace(ket(00...0), n)underbrace(bra(00...0), m)+e^(i alpha)underbrace(ket(11...1), n)underbrace(bra(11...1), m) $

  X spider:
  $ #image("figs/rules/red.png", width: 20%) = underbrace(ket(++...+), n)underbrace(bra(++...+), m)+e^(i alpha)underbrace(ket(--...-), n)underbrace(bra(--...-), m) $
]

#slide(title: "ZX diagrams are universal")[
  scalar: #h(100pt) #box(image("figs/rules/scalar.png", width: 150pt), baseline: 70%)
]


#slide(title: "ZX diagram is universal")[
  
  #box(stack($ket(0)$,
  $ket(1)$,
  $ket(+)$,
  $ket(00)+ket(11)$, spacing: 52pt)) #h(40pt)
  #box(image("figs/rules/states.png", width: 140pt), baseline:23%)
]

#slide(title: "ZX diagrams are universal")[
  
  #box(stack($X$,$Z$,$S$, $op("CNOT")$, spacing: 60pt))
  #h(40pt)
  #box(image("figs/rules/op.png", width: 120pt), baseline:14%)
]

#slide(title: "ZX diagram is universal")[
  
  #box(stack($MM_(Z Z Z)$, $MM_(X I X)$, spacing: 140pt)) #h(40pt)
  #box(image("figs/rules/meas.png", width: 140pt), baseline:23%)
]


#slide(title: [Rewrite rules])[
  #alternatives[
    #image("figs/rules/fusion.png", width: 300pt) fusion][
    #image("figs/rules/id.png", width: 300pt) id][
    #image("figs/rules/pi-copy.png", width: 300pt) $pi$-copy,
    
    $k in ZZ$][
    #image("figs/rules/pi-copy2.png", width: 300pt) $pi$-copy',
    
    $k in ZZ$][
    #image("figs/rules/sc.png", width: 300pt) strong complementarity (sc)]
    
]


#new-section("Quantum Error Correction")

#slide(title: [Stabilizer codes], footer: [Gottesman, D. (1997). Stabilizer codes and quantum error correction. California Institute of Technology.])[

  / *Stabilizers*: $cal(S) < cal(P)_n$, s.t. $cal(S)$ is Abelian

  / *Code space*: $cal(C):={ket(psi) in cal(H)_n:S ket(psi)=+ket(psi),forall S in cal(S)}$

  #show: pause(2)

  / *Logical (Pauli) operators*: $cal(L):=cal(N)(cal(S)) slash cal(S)$ #only("2")[
    , where $ cal(N)(cal(S)):={P in cal(P)_n: P S=S P, forall S in cal(S)} $
  ]

  #show: pause(3)

  #h(13.3em) $=angle.l overline(X)_1, overline(Z)_1, overline(X)_2, overline(Z)_2, ..., overline(X)_k, overline(Z)_k angle.r$
    
  #show: pause(4)

  / *Encoders*: a Clifford isometry $E$, s.t. $forall P in cal(P)_k$,
  $ E P E^dagger = overline(P) in cal(L).  $
]

#slide(title: [Logical states \& operators])[
  #set align(horizon)
  $ket(overline(psi)) &:= E ket(psi)\
  overline(U) &:= E U E^dagger$

  // #grid(columns: (9em ,auto), rows: 2, row-gutter: 1em)[
  //   ][
  //   $ket(psi)$ 
  //   #box(baseline:45%)[#image("figs/pte/Epsi.png", height: 5em)#place(dx:3.5em, dy:-3em)[$E$]]
  //   $ket(overline(psi))$][
  //   ][
  //   #image("figs/pte/Epsi.png", height: 5em)]
]

#slide(title: "Calderbank-Shor-Steane (CSS) Codes")[
  CSS codes are stabilizer codes whose \ 
  #h(3em) stabilizers can be divided into 2 types: *X-type* or *Z-type*, i.e.,
  $ cal(S)={cal(X)_1,cal(X)_2...} union {cal(Z)_1,cal(Z)_2...} $
]

#slide(title: "Transversal gates", footer: [Gottesman, D. (2000). Fault-tolerant quantum computation with local gates. Journal of Modern Optics,
47(2-3), 333-345])[
  $overline(U) :=E U E^dagger$

  #show: pause(2)
  $ overline(U) = #strong[$times.circle.big_i^n U_i$] $
]

#slide(title: "Transversal gates")[
  #columns(2)[
    7-qubit Steane code:
    $ overline(X) &=X_1 X_2 X_3, \
      overline(H) &=H^(times.circle 7), \
      overline(S) &=S^(times.circle 7) $

    #colbreak()
    15-qubit QRM code:
    $ overline(X) &=X_1 X_2 ... X_7,\
      overline(T) &=T^(times.circle 15) $
  ]
]

#slide(title: "Code morphing")[
    $est$
    #box(image("figs/steane/zx geo.png", width: 200pt), baseline: 50%)
    $==>$
    #box(image("figs/morph/2367/3.png", width: 270pt), baseline: 50%)
    #box()[
      #place(dy: -3em)[$E_(dbracket(4, 2, 2))$]
      #place(dy: 3em)[$E_(dbracket(5, 1, 3))$]]
    // $E$ $E$
    // #place(dy: 2em)[$E_(bracket.l.double 4, 1, 2 bracket.r.double)\ \ E_(#text("steane"))$]
]


#slide(title: "Gauge fixing")[
  #image("figs/gauge/qrm -> steane.png", height: 13em)
  #place(dx: 14.5em, dy: -8em)[$=$]
  #place(dx: 2em, dy: -8em)[$eqrm$]
  #place(dx: 18.6em, dy: -11em)[$est$]
  #place(dx: 19em, dy: - 4em)[$ket(Psi)$] 
]