#import "../import.typ": *

#slide(title: [CSS codes])[
  / CSS codes: stabilizer codes whose stabilizers can be divided into\ 2 types: *X-type* or *Z-type*.

]

#slide(title: [CSS codes])[
  $cal(S)=angle.l Z Z I, Z I Z angle.r$

  $cal(S)=angle.l Z Z, X X angle.r$

  $cal(S)=angle.l Z Z Z Z, X X X X angle.r$

  #pause
  $cal(S)=angle.l X Z Z X I, I X Z Z X, X I X Z Z, Z X I X Z angle.r$
]


#slide(title: [CSS codes])[
  #write_footer[Kissinger, A. (2022). Phase-free ZX diagrams are CSS codes (... or how to graphically grok the surface code). arXiv preprint arXiv:2204.14038.]

  / CSS codes: stabilizer codes whose stabilizers can be divided into\ 2 types: *X-type* or *Z-type*.
  
  #pause
  
  #align(center)[#cbox[Every CSS code encoder is a phase-free ZX diagram.]]
]

#slide(title: [Encoders as ZX diagrams])[
  #grid(columns: (450pt, 1fr))[
    Stabilizers of the *Steane code*:
    
    #h(20pt)
    #box[#grid(columns: (160pt, auto))[
      #uncover(1, mode:"transparent")[$Z_1 Z_3 Z_5 Z_7\ Z_2 Z_3 Z_6 Z_7\ Z_4 Z_5 Z_6 Z_7$]
    ][$#uncover("1, 3-", mode:"transparent")[$X_1 X_3 X_5 X_7$]\
      #uncover("1, 4-", mode:"transparent")[$X_2 X_3 X_6 X_7$]\
      #uncover("1, 5-", mode:"transparent")[$X_4 X_5 X_6 X_7$]$
    ]]
  
    Logical Pauli operators:
    
    #h(20pt)
    #box[#grid(columns: (160pt, auto))[
      #uncover(1, mode:"transparent")[$overline(Z)=Z_1 Z_4 Z_5$]
    ][
      #uncover("1, 6-", mode:"transparent")[$overline(X)=X_1 X_4 X_5$]
    ]]
  ][
    #alternatives(position: right)[][
      #image("../figs/steane/zx col 0.svg", height: 250pt)][
      #image("../figs/steane/zx col 1.svg", height: 250pt)][
      #image("../figs/steane/zx col 2.svg", height: 250pt)][
      #image("../figs/steane/zx col 3.svg", height: 250pt)][
      #image("../figs/steane/zx col.svg", height: 250pt)]
  ]
]
