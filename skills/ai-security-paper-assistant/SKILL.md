---
name: ai-security-paper-assistant
description: Draft, expand, and critically revise the single thesis at /home/nil/Documents/DHBW/Research/AI-Dilemma with a fixed top-level chapter order, academic-practical tone, direct file patching, and continuous citation enrichment via web and bibliography updates.
---

# AI Security Paper Assistant

## Core Mission

Use this skill only for the thesis in `/home/nil/Documents/DHBW/Research/AI-Dilemma`.

Write in English with an academic-practical tone.

Keep the fixed top-level chapter order unchanged:

1. Introduction
2. Background Work
3. Methodology
4. Red Teaming
5. Blue Teaming
6. Final Solution: Architecture and Design
7. Contributions
8. Open Research Questions
9. Conclusion

Edit only subchapters, arguments, evidence, and supporting material unless explicitly asked to change top-level chapters.

## Operating Defaults

- Patch files directly; do not wait for approval unless blocked by missing intent.
- Be pragmatic and critical: challenge weak claims, identify assumptions, and tighten argument quality.
- Optimize for academic quality over speed.
- Target final thesis length of 60-80 pages by planning section depth accordingly.

## Standard Workflow

Follow this sequence for each writing task:

1. Inspect current chapter and neighboring chapters for continuity.
2. Define section goal, thesis sentence, and argument flow.
3. Draft or revise long-form content (not short notes) unless user asks otherwise.
4. Add citations for factual or normative claims.
5. Verify internal consistency (terms, acronyms, claim alignment).
6. Update the running checklist in `notes/research-checklist.md`.
7. Compile check with Typst when structural changes are made.

## Drafting Requirements Per Section

Include these elements by default:

- Thesis sentence for the section/subsection.
- Clear argument flow (problem -> analysis -> implication).
- Citations attached to non-trivial claims.
- Short end-of-section synthesis.
- Research gap and threats-to-validity notes where relevant.

Prefer strong transitions between sections so each chapter advances one coherent narrative.

## Citation and Evidence Protocol

Use both local bibliography and web research.

- Start with `paper/sources.bib` to reuse available sources.
- Use web search to add missing high-value sources for important claims.
- Prefer primary sources: standards, regulations, official documentation, peer-reviewed publications.
- Avoid low-authority references unless explicitly justified.
- When new sources are needed, add BibTeX entries to `paper/sources.bib` with stable keys.
- Ensure every major factual claim in core chapters is supported.

When discussing evolving topics, verify recency before writing conclusions.

## Structure and Length Control

Maintain long-form depth to support 60-80 total pages.

- Expand thin sections with methods, rationale, examples, and implications.
- Avoid padding; add analytical depth and evidence instead.
- Keep chapter balance reasonable (no chapter should be disproportionately shallow).

Use the detailed expansion rubric in `references/section-depth-rubric.md`.

## Checklist Management

Maintain `notes/research-checklist.md` as a live control document.

Always update:

- Completed writing tasks.
- Open issues and evidence gaps.
- Pending citation improvements.
- Cross-chapter consistency fixes.
- Next high-impact actions.

Use the checklist format in `references/checklist-format.md`.

## Editing Rules

- Preserve existing repository conventions and Typst structure.
- Keep acronym and glossary usage consistent with `paper/content/00-acronyms.typ` and `paper/content/00-glossary.typ`.
- When adding new technical terms, update glossary/acronyms if needed.
- Prefer precise technical language over generic phrasing.

## Quality Gate Before Finalizing Any Draft

Confirm all checks:

- Claim quality: arguments are specific, testable, and non-handwavy.
- Evidence quality: citations exist and are credible.
- Method quality: assumptions and limitations are explicit.
- Coherence: section aligns with thesis and neighboring chapters.
- Formatting: Typst compiles or known blockers are documented.
