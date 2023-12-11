
#import "../import.typ": *

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


  
#slide()[
  #all_table
]

#let stean_zx_reprs = [
#place(dx: 20pt, dy: -10pt)[#image("../figs/steane/zx col.svg", width: 3cm)]
#place(dx: 150pt, dy: 30pt)[#image("../figs/steane/zx geo.svg", width: 6cm)]
#place(dx: 390pt, dy: 10pt)[#rotate(-90deg)[#image("../figs/steane/zx col.svg", width: 3cm)]]
#place(dx: 580pt, dy: -60pt)[#image("../figs/steane/zx circuit.svg", width: 6cm)]
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
  #place(dx: 213pt, dy: -140pt)[#uncover("2-")[#amorph] #h(118pt) #uncover("3-")[#amorph]]
  #uncover("4-")[#place(dx: 310pt, dy:-70pt )[#xarrow(sym: sym.arrow.l.r.double.long, margin: 90pt, [gauge fixing])]]
]