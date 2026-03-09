#import "@preview/supercharged-dhbw:3.4.0": *
#import "content/00-acronyms.typ": acronyms
#import "content/00-glossary.typ": glossary

#show: supercharged-dhbw.with(
  title: "AI Dilemma, Between Security and Threat",
  authors: (
    (name: "Mouad Abid", student-id: "8017965", course: "TINF23CS2", course-of-studies: "TINF23CS2"),
  ),
  acronyms: acronyms,
  glossary: glossary,
  at-university: true,
  city: "Mannheim",
  bibliography: bibliography("sources.bib"),
  date: datetime.today(),
  language: "en",
  supervisor: (university: "Daniel Riebel"),
  university: "DHBW",
  university-location: "Mannheim",
  university-short: "DHBW",
)

#include "content/chapters/01-introduction/index.typ"
#include "content/chapters/02-background-work/index.typ"
#include "content/chapters/03-methodology/index.typ"
#include "content/chapters/04-red-teaming/index.typ"
#include "content/chapters/05-blue-teaming/index.typ"
#include "content/chapters/06-final-solution/index.typ"
#include "content/chapters/07-contributions/index.typ"
#include "content/chapters/08-open-research-questions/index.typ"
#include "content/chapters/09-conclusion/index.typ"
