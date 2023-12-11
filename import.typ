#import "@preview/polylux:0.3.1": *
#import "@preview/physica:0.8.1":bra, ket
#import "@preview/tablex:0.0.6": tablex, hlinex, vlinex, cellx
#import "@preview/xarrow:0.2.0": xarrow
// #import "@preview/commute:0.2.0": node, arr, commutative-diagram

#import themes.metropolis: *



#let write_footer(footer) = {m-footer.update[#text(size: 14pt)[#footer]]}
#let reset_footer() = {m-footer.update([])}

#let eqt(sup, sub: none) = math.attach(math.limits(xarrow(sym: sym.eq, text(0.7em)[#sup])), b: text(0.7em)[#sub])

#let cbox = box.with(stroke: 2pt + gray, inset: 15pt, radius: 10pt)

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

#let stean_reprs = [
  #place(dx: 10pt, dy: 10pt)[$X_1 X_3 X_5 X_7$\ $X_2 X_3 X_6 X_7$\ $ dots.v $]
  #place(dx: 150pt, dy: 30pt)[#image("./figs/steane/geo.svg", width: 6cm)]
  #place(dx: 350pt, dy: 30pt)[#image("./figs/steane/tanner.png", width: 6cm)]
  #place(dx: 580pt, dy: -60pt)[#image("./figs/steane/circ.png", width: 6cm)]
]
#let stean_arrows = [
  #place(dx: 10cm, dy: -6.5cm)[
    $[| 7, 1, 3 |]$\ Steane code]
  #place(dx: 90pt, dy: -80pt)[#rotate(-40deg)[#xarrow(sym: sym.arrow.l, margin: 25pt, [stabilizer group])]]
  #place(dx: 220pt, dy: -60pt)[#rotate(-70deg)[#xarrow(sym: sym.arrow.l, margin: 25pt, [geometry])]]
  #place(dx: 330pt, dy: -60pt)[#rotate(70deg)[#xarrow(sym: sym.arrow, margin: 20pt, [tanner graph])]]
  #place(dx: 450pt, dy: -90pt)[#rotate(30deg)[#xarrow(sym: sym.arrow, margin: 25pt, [encoder])]]
]