
#let ket(x) = $lr(|#x angle.r)$
#let bra(x) = $lr(angle.l #x|)$
#let dbracket(n, k, d) = $bracket.l.double #n, #k, #d bracket.r.double$


#let est = $E_(#text[steane])$
#let eex = $E_(#text[ex])$
#let eqrm = $E_(#text[qrm])$
#let esub = $E_(#text[sub])$
#let sex = $cal(S)_(#text[ex])$
#let sqrm = $cal(S)_(#text[qrm])$
#let ssub = $cal(S)_(#text[sub])$
#let gsub = $cal(G)_(#text[sub])$

// #let zxeq = (
//     "fusion": $limits(=)^sscript(#text[fusion])$,
//     "unfusion": $limits(=)^sscript(#text[unfusion])$,
//     "pte": $limits(=)^sscript(#text[PTE])$,
//     "rpte": $limits(=)^sscript(#text[reversed])_sscript(#text[PTE])$,
//     "pi": $limits(=)^sscript(pi#text[-copy])$,
//     "eular": $limits(=)^sscript(#text[eular])$)

#let eqt(sup, sub: none) = $limits(=)^sscript(#sup)_sscript(#text[#sub])$