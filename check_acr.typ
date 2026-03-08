#import "paper/content/00-acronyms.typ": acronyms

#for acr in acronyms.keys() {
  let defs = acronyms.at(acr)
  panic(type(defs))
}
