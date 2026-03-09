# Research Checklist (AI Security Thesis)

## Completed

- [x] Top-level chapter structure fixed and reindexed (2026-03-08)
- [x] Methodology chapter added and integrated (2026-03-08)
- [x] Red-team and blue-team source base curated with verified links in `paper/sources.bib` (2026-03-08)
- [x] Source synthesis and drafting plan documented in `notes/sources.md` (2026-03-08)
- [x] Red Teaming chapter expanded with Crescendo/salami-slicing finding and screenshot placeholders (2026-03-08)
- [x] Thesis content reorganized into chapter/subchapter folder structure with successful Typst compile (2026-03-08)
- [x] Major depth expansion pass completed for Methodology and Blue Teaming chapters (2026-03-08)
- [x] Red Teaming chapter deepened with sophisticated scenario analysis (R1-R5), multi-turn instrumentation, and evaluation metrics (2026-03-08)
- [x] Final Solution chapter expanded around `Presentation_Lyraix_Guard_V0.ipynb` with behavioral-analysis and multi-turn intent extraction operating model (2026-03-08)
- [x] Citation enrichment pass added prompt-injection, HarmBench, LM-agent risk, and serving-stack references in `paper/sources.bib` (2026-03-08)

## In Progress

- [ ] Expand all major chapters toward 60-80 page target with balanced depth
- [ ] Increase citation density for empirical and normative claims
- [ ] Integrate newly curated citations directly into chapter prose (Introduction, Background Work, Contributions, Open Questions)
- [ ] Complete equivalent depth expansion for Introduction and Background Work

## Evidence Gaps

- Threat taxonomy claims -> tie MITRE ATLAS techniques to chapter-specific attacker models with explicit traceability table
- Architecture effectiveness claims -> add comparative evidence across guard, detection, and smoothing defenses
- Notebook results claims -> insert exact measured values and confidence notes from reproducible benchmark reruns

## Consistency Fixes

- Ensure terminology alignment across Red Teaming, Blue Teaming, and Final Solution
- Keep acronym usage consistent at first use per chapter

## Next Actions

1. Insert concrete benchmark outputs from `Presentation_Lyraix_Guard_V0.ipynb` into Final Solution placeholder table/figures
2. Deepen `01-introduction` and `02-background-work` with stronger literature synthesis and chapter-bridge transitions
3. Add chapter-level traceability matrix (attack family -> control -> evidence artifact -> residual risk)
