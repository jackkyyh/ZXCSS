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