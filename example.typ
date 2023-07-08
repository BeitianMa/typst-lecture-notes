#import "template.typ": *

#let title = "Real and Complex Analysis"
#let author = "Walter Rudin"
#let professor = "Ming Li"
#let creater = "Beitian Ma"
#let time = "Spring 2023"
#let abstract = lorem(60)

#show: note_page.with(title, author, professor, creater, time, abstract)

= Abstract Integration
#lorem(80)

#definition[#lorem(60)]

#lorem(60)

== Set-theoretic notations and terminology

#lorem(40)

#notefig("images//plot1.svg", width: 40%)

#lorem(60)

#definition[#lorem(60)]

#lorem(60)

$ cal(A) := { x in RR | x "is natural" } $

#lorem(10)

#theorem[#lorem(50)]

#lorem(30)

#corollary[
  #lorem(20)
  $ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $
  #lorem(20)
]

#lorem(40)

#theorem[#lorem(30)]

== The concept of measurability
#definition[#lorem(10)]

#lorem(80)

#corollary[#lorem(30)]

#lorem(50)

#lemma[#lorem(40)]

#lorem(40)

= Positive Borel Measures
#lemma[
  #lorem(70)
  $ vec(a, b, c) dot vec(1, 2, 3)
    = a + 2b + 3c $
]

#lorem(40)

== Vector spaces
This is an example where you can easily reference and jump to a block of a definition, theorem, or picture under this template. From #refto("Lemma 1.2.1"), we can get

#corollary[#lorem(40)]

which is consistent with the pattern in #refto("Figure 1.1.1").

#notefig("images//plot2.svg", width: 40%)