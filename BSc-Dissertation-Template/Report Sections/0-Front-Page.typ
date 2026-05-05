#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

#set align(center)

#v(1fr)

// Title
#text(20pt, weight: "bold")[
  Does Digital Assistance Deepen or Disrupt Player Experience in
  Virtual Tabletop Role-Playing Games?]

#v(1cm)

// University branding
#image("../Images/uni_crest.jpg", width: 60%)

#v(1.5cm)

// Author information
#text(12pt)[
  Logan Kirby \
  27450556
]

#v(0.45cm)

// Contact
#text(12pt)[
  27450556\@students.lincoln.ac.uk
]

#v(0.45cm)

// Institution details
#text(12pt)[
  School of Engineering and Physical Sciences \
  #v(0.25cm)
  College of Health and Science \
  #v(0.25cm)
  University of Lincoln
]

#v(1cm)

// Submission statement
#block(width: 85%)[
  #text(12pt)[
    Submitted in partial fulfilment of the requirements for the Degree of Bachelor of Science with Honours in Games Computing
  ]
]

#v(1cm)

// Supervisor
#text(12pt)[
  Supervisor: Themis Papaioannou
]

#v(0.5cm)

// Submission date
#text(12pt)[
  May 2026
]

#v(1fr)
