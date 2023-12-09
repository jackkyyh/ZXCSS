#import "../import.typ": *

#slide(title: "Code morphing")[
  #write_footer[Vasmer, M., & Kubica, A. (2022). Morphing quantum codes. PRX Quantum, 3(3), 030319]

  // #pause

  Given a *parent code* $cal(C)_("parent")$,
  with stabilizers $cal(S)$ and physical qubits $Q$,

  choose a subset $R subset Q$.

  #pause

  / child code: $cal(C)_("child")$ whose stabilizers are
  $ cal(S)_("child"):={S in cal(S): op("supp")(S) subset R}. $
]

#slide(title: "Code morphing")[

  Consider the encoders $E_("parent")$ and $E_("child")$, which are Cliffords,

  / morphed code: $cal(C)_("morphed")$ whose encoder is
  $ E_("morphed"):= (#text(gray)[$I^(times.circle|Q backslash R|)times.circle$]  E^dagger_("child"))E_("parent"). $
]

#slide(title: "Code morphing")[
  #reset_footer()

  #grid(columns: (21em, auto))[
  Given an encoder $E_("parent") $ and a subset $R subset Q$,

    #alternatives[][
      #box(width: 19em)[1. Unfuse all #text(olive)[green] spiders which are supported *partially* on $R$.]][
      #box(width: 19em)[2. Add an identity #text(red)[red] spider between each pair of unfused #text(olive)[green] spiders.]][
      #box(width: 22em)[3. let #text(purple)[$E_("child")$] be the subdiagram enclosed by $R$;\ let #text(blue)[$E_("morphed")$] be the subdiagram enclosed by $Q backslash R$]]
  ][
    #alternatives(position: top+center)[
      #h(60pt)#text(purple)[$R={2,3,6,7}$]
      #image("../figs/morph/2367/1.svg", width: 8em)
      #h(90pt)$E_("parent")$][
      #image("../figs/morph/2367/2-0.svg", width: 8em)][
      #image("../figs/morph/2367/2.svg", width: 8em)][
      #image("../figs/morph/2367/3.svg", width: 9em)]
    ]
]

#slide(title: [Code morphing])[
  #place()[#text(purple)[$R={2,3,6,7}$]]

  #set align(center)
  #box[#alternatives[$E_("parent")$][$E_("steane")$]]
  #box(baseline: 50%)[#image("../figs/morph/2367/1.svg", height: 200pt)]
  #h(10pt)$=$#h(10pt)
  #box(baseline: 50%)[#image("../figs/morph/2367/3.svg", height: 300pt)]
  #box[
    #place(dy: -100pt)[#text(purple)[#alternatives[$E_("child")$][$E_([| 4, 2, 2 |])$]]]
    #place(dy: 80pt)[#text(blue)[#alternatives[$E_("morphed")$][$E_([| 5, 1, 3 |])$]]]]
]


#slide(title: [Code morphing])[
  #text(purple)[$R={4,5,6,7}$]
  // #set align(center)
  
  #one-by-one(start: 1)[
    #box(image("../figs/morph/4567/1.svg", width: 170pt), baseline: 50%)
    #box(place(dx:-5em, dy: 4em)[$E_"steane"$])][
    $=$ #box(image("../figs/morph/4567/2.svg", width: 220pt), baseline: 40%)][
    $=$ #box(image("../figs/morph/4567/3.svg", width: 270pt), baseline: 40%)
    #box()[
      #place(dx: -10em, dy: 4em)[$E_([| 6, 1, 1 |])$]
      #place(dx: -5em, dy: 4em)[$E_([| 4, 3, 1 |])$]]
  ]
]

#slide(title: [Code morphing])[
  #image("../figs/morph/qrm.svg", width: 650pt)
  #h(100pt)$E_("QRM")$
  #h(150pt)$E_([| 8, 3, 2 |])$
  #h(90pt)$E_([| 10, 1, 2 |])$
]