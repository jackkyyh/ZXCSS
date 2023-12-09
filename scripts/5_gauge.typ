#import "../import.typ": *

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

#align(center + horizon)[#image("../figs/gauge/circ.png", width: 650pt)]


#slide(title: [Quantum subsystem code], )[
  #write_footer[Kribs, David W. et al. “Unified and generalized approach to quantum error correction.” Physical review letters 94 18 (2004): 180501 .]

  / Gauge group: any subgroup $cal(G) < cal(P)_n$
  
  / Stabilizer group: $cal(S):= cal(N)(cal(G)) sect cal(G)={S in cal(G): S G = G S, forall G in cal(G)}$
  
  / Gauge operators: $cal(L)_g:= cal(G) slash cal(S)$
  #h(10em)$tilde.equiv angle.l L_1^X, L_1^Z, ..., L_t^X, L_t^Z angle.r < cal(P)_n$
  
  #place(dx: 590pt, dy: -20pt)[#image("../figs/gauge/venn.svg", width: 130pt)]
  #place(dx: 655pt, dy: -30pt)[$cal(G)$]
  #place(dx: 600pt, dy: 30pt)[$cal(L)_g #h(35pt) cal(S)$]
]

#slide(title: "Subsystem code encoders as ZX diagrams")[
  #reset_footer()
  #align(center)[#image("../figs/gauge/subsys.svg", width: 300pt)]
]



#slide(title: [The $bracket.l.double 15, 1, 3, 3 bracket.r.double$ subsystem code])[
  $cal(G)_"sub" :=cal(S)_"ex" union cal(S)_"qrm"$

  $=> cal(S)_"sub" = cal(S)_"ex" sect cal(S)_"qrm"$

  $=>cal(L)_g = cal(S)_"ex" dot.circle cal(S)_"qrm" = angle.l L_1^X, L_2^X, L_3^X, L_1^Z, L_2^Z, L_3^Z angle.r$

  #place(dx: 540pt)[
  #align(right)[#image("../figs/gauge/vecc.svg", width: 200pt)]]
  #place(dx: 605pt, dy: -10pt)[$cal(S)_"ex"$ #h(85pt) $cal(S)_"qrm"$]
  #place(dx: 620pt, dy: 65pt)[$cal(S)_"sub"$]
]

#slide(title: "QRM")[
  #align(center)[#image("../figs/gauge/sub -> qrm.svg", width: 25em)]
  #place(dx: 6em, dy: -6em)[$E_"sub"$]
  #place(dx: 15em, dy: -6em)[$=$]
  #place(dx: 21.5em, dy: -6em)[$E_"qrm"$]
]

#slide(title: "QRM")[
  #one-by-one[
    #box(baseline: 50%)[#image("../figs/gauge/sub -> qrm proof 1.svg", width: 5.9em)]][
    #h(0.2em)#eqt[def]#h(0.2em)
    #box(baseline: 50%)[#image("../figs/gauge/sub -> qrm proof 2.svg", width: 5.7em)]][
    #h(0.2em)#eqt[$pi$-copy]#h(0.2em)
    #box(baseline: 50%)[#image("../figs/gauge/sub -> qrm proof 3.svg", width: 5.7em)]][
    #h(0.2em)#eqt[fusion]#h(0.2em)
    #box(baseline: 50%)[#image("../figs/gauge/sub -> qrm proof 4.svg", width: 5.2em)]]
] 

#slide(title: "ExSteane")[
  #align(center)[#image("../figs/gauge/sub -> ex.svg", width: 25em)]
  #place(dx: 6em, dy: -6em)[
    $E_"sub" #h(200pt) = #h(130pt) E_"ex"$]
]

#slide(title: [Gauge fixing (QRM $->$ ExSteane)], )[
  #write_footer[Vuillot, Christophe et al. “Code deformation and lattice surgery are gauge fixing.” New Journal of Physics 21 (2018): n. pag.]

  #alternatives[
    #image("../figs/gauge/fixing/0.svg", width: 18em)][
    #image("../figs/gauge/fixing/1.svg", width: 18em)][
    #image("../figs/gauge/fixing/2.svg", width: 18em)][
    #image("../figs/gauge/fixing/3.svg", width: 29.5em)
      #place(dx: 20em, dy: -6em)[$=$]
      #place(dx: 25em, dy: -6em)[$E_"ex"$]]
  #box[#place(dx: 2.5em, dy: -8em)[$E_"qrm"$]]
  #alternatives(position: top)[][
    / Step 1: measure gauge operators $L_1^X,L_2^X,L_3^X$, \ obtaining outcomes $k_1, k_2, k_3 in ZZ_2$.
    ][
    / Step 2: For each $k_i=1$, apply $L_i^Z$.
    ][]
]


#slide(title: [Gauge fixing (QRM $->$ ExSteane)])[
  #reset_footer()
  #image("../figs/gauge/sub -> ex gauge.svg", width: 30em)
    #place(dx: 2.5em, dy: -6em)[$E_"qrm"$]
    #place(dx: 16.5em, dy: -6em)[$=$]
    #place(dx: 22em, dy: -6em)[$E_"ex"$]
]


#slide(title: [Gauge fixing (QRM $->$ ExSteane, proof)])[
  #alternatives(position: horizon)[
    #image("../figs/gauge/gauge fixing.svg", width: 30em)
    #place(dx: 2.5em, dy: -6em)[$E_"sub"$]
    #place(dx: 14em, dy: -6em)[#eqt[def]]
  ][
    #image("../figs/gauge/gauge fixing 2.svg", width: 30em)
    #place(dx: 10.4em, dy: -5em)[#eqt([reversed], sub: [PTE])]
    #place(dx: 20.5em, dy: -5em)[#eqt[$pi$-copy]]
  ][
    #image("../figs/gauge/gauge fixing 3.svg", width: 30em)
    #place(dx: 9.0em, dy: -6em)[#eqt[scalar]]
    #place(dx: 19em, dy: -6em)[#eqt[$pi$-copy]]
  ][
    #image("../figs/gauge/gauge fixing 5.svg", width: 28em)
    #place(dx: 14em, dy: -7em)[#eqt[def]]
    #place(dx: 19.5em, dy: -7em)[$E_"ex"$]
  ]
] 