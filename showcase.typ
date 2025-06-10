#import "@local/mypkg:1.0.0":*
#show: template
#chapter(1)

#h1("This is a H1 Tag")
#contents


#h2("This is a H2 Tag")
#h3("This is a H3 Tag")
#h2("Another H2 Tag")
#h4("This is a H4 Tag (no numbering intentional)")


#bbox[Use "\#bbox[ < content > ]" for this box. 

  bbox stands for basic box
]

#lbox("Example","2")[Use 

  \#lbox(\< first string> , \< second string>)[ \<content>]  

  to get this box 

  #theorem("1.1.1")[These are varants of the lbox that  already have the first word filled out]

these are all the possible variants:


  #grid(columns:(1fr,1fr))[
theorem

definition

lemma

corollary

proposition

example

proof

  ][

img

todo
remark

note

axiom

conjecture

claim

fact


]
]
#proof("1.1.1")[you can end proofs with 

\#qed 

  like this 

  #qed
]

- new page with \#newpage 
#newpage

these are some built in shortcuts
#c[

  #table(columns: 2)[Input][Output][qed][#align(right)[$square$]][ar][ $->$][tf][ $therefore$][im][ $=>$][NN][ $bb(N)$][ZZ][ $bb(Z)$][QQ][ $bb(Q)$][RR][ $bb(R)$][CC][ $bb(C)$][inf][ $infinity$][quad][ quad][qquad][ quad quad][thinspace][ thin][medspace][ med][thickspace][ thick][newpage][ pagebreak()]
]
These  are manual double boxes can be created with  \#mdbox[\<box1>][\<box2>]
#mdbox[you can choose what to type in each box][You dont have to fill out the first box to reach the second ]

These  are manual triple boxes can be created with  \#mtbox[\<box1>][\<box2>]

#mtbox[Same][thing][3 times]

This is a barrier and you can use them to seperate stuff 

This is created with \#barrier
#newpage
This is an automatic double box this can be created with \#adbox[\<content>]

You have to fill out the first box before you reach the second
#adbox[#lorem(420)]


same for automatic triple box this can be created with \#atbox[\<content>]


#atbox[#lorem(400)]
