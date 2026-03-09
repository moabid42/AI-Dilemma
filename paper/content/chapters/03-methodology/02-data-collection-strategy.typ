== Data Collection Strategy

This section argues that robust AI-security conclusions require triangulated evidence rather than a single data source. The study therefore combines normative, empirical, and operational evidence streams.

The three evidence streams are:

- Standards and framework analysis (NIST, ISO, EU regulations).
- Structured attack traces from red-team scenarios.
- Operational control evidence from blue-team implementation logic.

Collection is artifact-centric. For each scenario run, the study stores scenario identifiers, prompts, retrieval context snapshots, tool-call traces, model outputs, policy decisions, and detection telemetry. This enables retrospective audit, cross-run comparison, and repeatability checks.

To reduce interpretation bias, artifacts are versioned and linked to test-run metadata (date, model version, control configuration, and expected outcome class). This structure is aligned with reproducibility expectations in applied security evaluation and supports later regression analysis when controls are updated @chao2024jailbreakbench.
