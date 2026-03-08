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

#include "content/01-introduction.typ"
#include "content/02-background-work.typ"
#include "content/03-methodology.typ"
#include "content/04-red-teaming.typ"
#include "content/05-blue-teaming.typ"
#include "content/06-final-solution.typ"
#include "content/07-contributions.typ"
#include "content/08-open-research-questions.typ"
#include "content/09-conclusion.typ"
