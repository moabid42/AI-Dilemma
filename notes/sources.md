# Curated Sources for AI Security Thesis (Red + Blue Teaming)

Date checked: 2026-03-08
Link status: all URLs below were validated as reachable (HTTP 200).

## Red Teaming Perspective

### `perez2022red`
- Core point: demonstrates automated red teaming where language models generate adversarial probes to expose failure modes in target models.
- Use in thesis: foundational method reference for scalable attack generation in Chapter 4 (Red Teaming) and for Methodology design choices.

### `ganguli2022redteaming`
- Core point: reports large-scale red teaming practices, harm taxonomies, and scaling behavior in safety testing.
- Use in thesis: empirical basis for why red teaming must be iterative, distribution-aware, and coupled with remediation loops.

### `zou2023universal`
- Core point: introduces universal suffix attacks that transfer across aligned models, showing brittle alignment boundaries.
- Use in thesis: concrete evidence for transferability risk and attack generalization claims.

### `wei2023jailbroken`
- Core point: analyzes failure modes of safety training and documents systematic jailbreak patterns.
- Use in thesis: supports threat modeling of prompt-level bypass strategies and limitations of static guardrails.

### `chao2024jailbreakbench`
- Core point: provides a reproducible benchmark for jailbreak robustness evaluation with standardized attack sets and metrics.
- Use in thesis: primary evaluation source for Chapter 3 (Methodology) and Chapter 7 (Contributions).

### `mitreAtlas`
- Core point: operational ATT&CK-style knowledge base for adversarial AI tactics, techniques, and procedures.
- Use in thesis: framework to structure attacker behavior, capability assumptions, and scenario mapping.

## Blue Teaming Perspective

### `bai2022constitutional`
- Core point: proposes constitutional AI and AI-feedback pipelines to improve harmlessness without fully relying on human labels.
- Use in thesis: model-level mitigation baseline for training-time defenses and policy shaping.

### `inan2023llamaguard`
- Core point: presents a dedicated safeguard model for input/output moderation in conversational systems.
- Use in thesis: supports architecture decisions for layered defense and runtime policy enforcement.

### `robey2024smoothllm`
- Core point: introduces randomized smoothing style defense against jailbreak prompts.
- Use in thesis: method-level evidence for robustness-by-transformation defenses.

### `zhang2025jailguard`
- Core point: proposes detection framework based on mutation inconsistency signals for prompt attack detection.
- Use in thesis: defensive detection component for blue-team monitoring and alerting pipeline.

### `ji2024semanticsmoothing`
- Core point: extends smoothing to semantic transformations and reports improved attack resistance.
- Use in thesis: comparative defense candidate for empirical defense stack evaluation.

### `nistAIRMF2023`
- Core point: defines governance, mapping, measurement, and management functions for AI risk programs.
- Use in thesis: normative backbone for Chapter 5 (Blue Teaming) controls and governance language.

### `nistGenAIProfile2024`
- Core point: applies AI RMF concepts specifically to generative AI systems and lifecycle risks.
- Use in thesis: bridges technical controls with organizational risk treatment in deployment settings.

### `owaspTop10LLM2025`
- Core point: practitioner-focused taxonomy of common LLM application vulnerabilities and mitigations.
- Use in thesis: practical control catalog and validation checklist for the final architecture chapter.

## Drafting Plan Using These Sources

1. Build a unified threat model first.
- Combine `mitreAtlas`, `wei2023jailbroken`, `zou2023universal`, and `ganguli2022redteaming` to define attacker goals, techniques, and transferability assumptions.

2. Lock methodology and evaluation criteria.
- Use `chao2024jailbreakbench` as the core benchmarking reference and align evaluation metrics with robustness, detection quality, and residual risk.

3. Write Red Teaming chapter with attack classes and procedures.
- Ground process design with `perez2022red` and `ganguli2022redteaming`.
- Support empirical claims about jailbreak behavior with `zou2023universal` and `wei2023jailbroken`.

4. Write Blue Teaming chapter as a layered control stack.
- Training/alignment layer: `bai2022constitutional`.
- Runtime guard layer: `inan2023llamaguard`.
- Detection/robustness layer: `robey2024smoothllm`, `zhang2025jailguard`, `ji2024semanticsmoothing`.

5. Anchor governance and compliance mapping.
- Map technical controls to AI risk processes using `nistAIRMF2023`, `nistGenAIProfile2024`, and `owaspTop10LLM2025`.

6. Draft Final Solution (Architecture and Design) as red-blue loop.
- Design architecture where red-team findings continuously update blue-team controls.
- Cite benchmark and standards sources to justify measurable security posture improvements.

7. Prepare Contributions and Open Research Questions.
- Contributions: integrated red/blue methodology + control architecture + evaluation protocol.
- Open questions: transferability under adaptive attackers, defense overhead, and governance-to-metric traceability.
