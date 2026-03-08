# Research Checklist (AI Security Thesis)

## Completed

- [x] Top-level chapter structure fixed and reindexed (2026-03-08)
- [x] Methodology chapter added and integrated (2026-03-08)
- [x] Red-team and blue-team source base curated with verified links in `paper/sources.bib` (2026-03-08)
- [x] Source synthesis and drafting plan documented in `notes/sources.md` (2026-03-08)
- [x] Red Teaming chapter expanded with Crescendo/salami-slicing finding and screenshot placeholders (2026-03-08)

## In Progress

- [ ] Expand all major chapters toward 60-80 page target with balanced depth
- [ ] Increase citation density for empirical and normative claims
- [ ] Integrate newly curated citations directly into chapter prose (Red Teaming, Blue Teaming, Methodology, Final Solution)

## Evidence Gaps

- Threat taxonomy claims -> tie MITRE ATLAS techniques to chapter-specific attacker models
- Evaluation metric claims -> operationalize JailbreakBench-style metrics for thesis experiments
- Architecture effectiveness claims -> add comparative evidence across guard, detection, and smoothing defenses

## Consistency Fixes

- Ensure terminology alignment across Red Teaming, Blue Teaming, and Final Solution
- Keep acronym usage consistent at first use per chapter

## Next Actions

1. Insert in-text citations from `paper/sources.bib` into `04-red-teaming.typ` and `05-blue-teaming.typ`
2. Add an evaluation subsection in `03-methodology.typ` grounded in JailbreakBench and detection metrics
3. Expand `06-final-solution.typ` with explicit red-blue feedback-loop architecture tied to NIST/OWASP controls
