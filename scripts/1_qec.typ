#import "../import.typ": *

#slide(title: [Stabilizer codes])[
  #write_footer[Gottesman, D. (1997). Stabilizer codes and quantum error correction. California Institute of Technology.]

  / Stabilizers: an Abelian subgroup $cal(S) < cal(P)_n$

  #pause
  
  / Codespace: $cal(C):={ket(psi) in cal(H)^(times.circle n): S ket(psi)=+ket(psi),forall S in cal(S)}$

  #pause
  #align(center)[#cbox[$dim cal(S) + log_2 dim cal(C) = n$]]
]

#slide(title: [Examples])[
  #reset_footer()

  #set align(top)
  #grid(columns: 2, column-gutter: 20pt, row-gutter: 30pt,
  uncover("2-")[$cal(S):=angle.l Z Z I, Z I Z angle.r$],
  uncover("2-")[$=>cal(C) &={alpha ket(000)+beta ket(111): alpha, beta in CC}\
            &=op("span"){ket(000), ket(111)}
            tilde.equiv cal(H)^(times.circle 1)$],
  uncover("3-")[$cal(S):=angle.l Z Z, X X angle.r$],
  uncover("3-")[$=>cal(C) ={1 / sqrt(2)(ket(00)+ket(11))}tilde.equiv cal(H)^(times.circle 0)$],
  uncover("4-")[$cal(S):=angle.l Z Z Z Z, X X X X angle.r $],
  uncover("4-")[$=> cal(C) = ?$] +
  uncover("5-")[$#h(200pt) tilde.equiv cal(H)^(times.circle 2)$\ $log_2 dim cal(C) = 4 - 2 = 2$]
  )

  #align(center)[#cbox[$dim cal(S) + log_2 dim cal(C) = n$]]
]

#slide(title: [Stabilizer codes])[
  #write_footer[Gottesman, D. (1997). Stabilizer codes and quantum error correction. California Institute of Technology.]

  / Stabilizers: an Abelian subgroup $cal(S) < cal(P)_n$
  
  / Codespace: $cal(C):={ket(psi) in cal(H)^(times.circle n): S ket(psi)=+ket(psi),forall S in cal(S)}$

  #pause

  / Encoder: $E: cal(H)^(times.circle k)  -> cal(C) subset cal(H)^(times.circle n)$

  #pause
  
  #alternatives(start: 3, position: horizon)[
        $k cases(#hide[1],#hide[1])$][$ket(alpha)$]
  #box(baseline: 40%)[#image("../figs/pte/encoder.svg", width: 7cm)
  #place(dx: 25pt, dy:-55pt)[$dots.v #h(50pt) E #h(60pt) dots.v$]]
  #box(baseline: 30%)[#alternatives(start: 3, position: horizon)[
        $cases(reverse: #true, #hide[1],#hide[1],#hide[1]) n$][$ket(overline(alpha)):= E ket(alpha)$: *logical states*]]
      
]
#slide(title: [Logical operators])[
  #let la = xarrow.with(sym: sym.arrow, width: 50pt)

  $ket(alpha) la(U) ket(beta)$\
  #pause
  $#rotate(90deg)[$-->$] #h(-10pt) #text(0.7em)[$E$] #h(55pt)
  #rotate(90deg)[$-->$] #h(-10pt) #text(0.7em)[$E$]$\
  $ket(overline(alpha))#uncover("3-")[$la(overline(U)?)$]ket(overline(beta))$
  
  #pause#pause

  $=> overline(U) E = E U$ or $overline(U):=E U E^dagger$

  #pause
  
  / Logical Paulis: $overline(P) = E P E^dagger, forall P in cal(P)_k$

  #pause
  #place(dx: 470pt, dy: -250pt)[
    #cbox[$[|n, k, d|]$ notation:

    #h(20pt)$k cases(#hide[1],#hide[1])$#h(-10pt)
    #box(baseline: 40%)[
      #image("../figs/pte/encoder.svg", width: 150pt)
      #place(dx: 20pt, dy:-45pt)[
        $dots.v #h(30pt) E #h(35pt) dots.v$]]
    #h(-10pt)
    $cases(reverse: #true, #hide[1],#hide[1],#hide[1]) n$

    #h(20pt)$d:= min\{op("wt")(overline(P))\}$
    ]]

  #pause

  In general, $overline(U)$ can be very complicated!
]

#slide(title: [Logical operators])[
  #reset_footer()
  $overline(U) E = E U$

  #image("../figs/pte/UE=EU.svg", width: 600pt)
  #place(dx:30pt, dy:-60pt)[
    $dots.v #h(35pt) U #h(40pt) dots.v #h(40pt)
    E #h(40pt) dots.v #h(50pt) = #h(60pt)
    dots.v #h(40pt) E #h(40pt) dots.v #h(40pt)
    overline(U) #h(40pt) dots.v$]
]