
#let chapter(chapter) =counter(heading).update(chapter -1) 
#let name(name) = name
#let template(doc) = {
  show math.equation: set text(font: "Fira Math")
  set text(font: "Fira Math")
  show outline: it => {
  show heading: none
  it
}
  set page(numbering: "1 of 1")
  
  show strong: it => $bold(it)$
  show emph: it => $italic(it)$
 
show outline: it => {
  show heading: none
  v(1em)
  it
}

show outline.entry: it => {
  v(1em, weak: true)
  let page-num = counter(page).at(it.element.location()).first()
  if it.level == 1 {
    text(weight: "bold")[#it.element.body]
    box(width: 1fr, repeat[#underline(" ")])
    [#page-num]
  }else if it.level ==2 {

    v(1em)
h(1.5em)
    text(weight: "bold")[#it.element.body]
    box(width: 1fr, repeat[#underline(" ")])
    [#page-num]
  }

  else if it.level ==3 {

    v(1em)
h(3em)
    text(weight: "bold")[#it.element.body]
    box(width: 1fr, repeat[#underline(" ")])
    [#page-num]
  }
    else {
    v(1em)
    h(4.5em)
    it.element.body
    box(width: 1fr, repeat[#underline(" ")])
    [#page-num]
  }
}


  doc
}
#counter(heading).step()
#let h1(body) = {
  counter(heading).step()
  v(1.2em, weak: true)
  set text(size: 30pt, weight: "bold")
  context place(dx: -0.6in)[#text(size: 40pt,counter(heading).display())]
  heading(level: 1)[#body]
  v(0.6em, weak: true)
}

#let h2(body) = {
  counter(heading).step(level:2)
  v(1.2em, weak: true)
  set text(size: 24pt, weight: "bold")
  context place(dx: -0.6in)[#text(size: 28pt,counter(heading).display())]
  heading(level: 2)[#body]
  v(0.6em, weak: true)
}

#let h3(body) = {
  counter(heading).step(level:3)
  v(1.2em, weak: true)
  set text(size: 18pt, weight: "bold")
  context place(dx: -0.6in)[#text(size: 18pt,counter(heading).display())]
  heading(level: 3)[#body]
  v(0.6em, weak: true)
}

#let h4(body) = {
  v(1em, weak: true)
  set text(size: 13pt, weight: "bold")
  heading(level: 4)[#body]
  v(0.4em, weak: true)
}


#let lbox(opt,number, body) = {
  v(15pt)
  block(
    radius: 5pt,
    width: 100%,
    stroke: 1pt, 
    inset: 0pt,
    fill: none,
    breakable: true  
  )[
    #place(
      top + left,
      dx: 10pt,
      dy: -10pt,
      rect(
        radius: 5pt,
        stroke: 1pt ,
        inset: 8pt,
        fill: white
      )[
        #text( weight: "bold")[#opt #number]
      ]
    )
    #pad(
      top: 2em,
      left: 1em,
      right: 1em,
      bottom: 1em
    )[
      #text()[#body]
    ]
  ]
}

#let bbox(body) = {
  v(15pt)
  block(
    radius: 5pt,
    width: 100%,
    stroke: 1pt, 
    inset: 0pt,
    fill: none,
    breakable: true  
  )[
    #pad(
      top: 1em,
      left: 1em,
      right: 1em,
      bottom: 1em
    )[
      #text()[#body]
    ]
  ]
}


#let theorem(number, body) = lbox("Theorem", number,body)
#let definition(number, body) = lbox("Definition", number,body)
#let lemma(number, body) = lbox("Lemma", number,body)
#let corollary(number, body) = lbox("Corollary", number,body)
#let proposition(number, body) = lbox("Proposition", number,body)
#let example(number, body) = lbox("Example", number,body)
#let proof(number, body) = lbox("Proof", number)[#align(left,body)]
#let img(number,body,def) = lbox("Image",number)[#align(center,body) #text(size:9pt,stroke:gray.darken(50%),)[#def]]
#let todo(body) = rect(fill: orange.lighten(90%), stroke: orange, inset: 5pt)[*TODO:* #body]
#let remark(number, body) = lbox("Remark", number, body)
#let note(number, body) = lbox("Note", number, body)
#let axiom(number, body) = lbox("Axiom", number, body)
#let conjecture(number, body) = lbox("Conjecture", number, body)
#let claim(number, body) = lbox("Claim", number, body)
#let fact(number, body) = lbox("Fact", number, body)
#let qed = align(right)[$square$]  
#let ar  = $->$
#let tf = $therefore$
#let im = $=>$
#let NN = $bb(N)$
#let ZZ = $bb(Z)$
#let QQ = $bb(Q)$
#let RR = $bb(R)$
#let CC = $bb(C)$
#let inf = $infinity$
#let quad = $quad$
#let qquad = $quad quad$
#let thinspace = $thin$
#let medspace = $med$
#let thickspace = $thick$
#let newpage = pagebreak()
#let c(body) = align(center)[#body]
#let barrier = rect(width: 100%, height: 0%)

#let mdbox(body1,body2)= {
grid(columns: (1fr,1fr),gutter:10pt)[#bbox(body1)][#bbox(body2)]
}

#let mtbox(body1,body2,body3)= {
grid(columns: (1fr,1fr,1fr),gutter:10pt)[#bbox(body1)][#bbox(body2)][#bbox(body3)]
}



#let adbox(body) = {
  v(15pt)
  columns(2, gutter: 10pt)[
    #block(
      radius: 5pt,
      width: 100%,
      stroke: 1pt, 
      inset: 1em,
      fill: none,
      breakable: true,
      height: auto
    )[
      #body
    ]
  ]
}


#let atbox(body) = {
  v(15pt)
  columns(3, gutter: 10pt)[
    #block(
      radius: 5pt,
      width: 100%,
      stroke: 1pt, 
      inset: 1em,
      fill: none,
      breakable: true,
      height: auto
    )[
      #body
    ]
  ]
}

#let contents = [#lbox("Contents","")[#outline()] #pagebreak()]
