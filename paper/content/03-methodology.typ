#import "@preview/supercharged-dhbw:3.4.0": acr

= Methodology

== Research Design

This paper follows a design-science-oriented security engineering methodology. The research artifact is the Threat-Driven Secure LLM Lifecycle (TSLL), which integrates offensive assessment and defensive control engineering into one operational loop.

The design process consists of five phases:

- Problem framing and scope definition.
- Threat and asset modeling.
- Adversarial scenario design and execution.
- Control design and architectural integration.
- Iterative evaluation and refinement.

The method combines qualitative analysis (attack-path reasoning, control mapping) with quantitative indicators (attack success and detection/response metrics).

== Data Collection Strategy

The study relies on three evidence sources:

- Standards and framework analysis (NIST, ISO, EU regulations).
- Structured attack traces from red-team scenarios.
- Operational control evidence from blue-team implementation logic.

Data is collected as reproducible artifacts: scenario definitions, prompts, context snapshots, tool-call traces, policy decisions, and detection logs. This supports auditability and repeatable reassessment.

== Threat Modeling and Scenario Construction

Threat modeling uses trust-boundary analysis and attacker-goal decomposition to build adversarial hypotheses. The process is informed by STRIDE-style reasoning and data-centric modeling principles @shostack_threat_2014 @shevchenko_datacentric_2016.

Each scenario is documented with:

- Target component and trust boundary.
- Attacker preconditions and capabilities.
- Attack steps and expected unsafe behavior.
- Potential business and security impact.
- Detection signals and candidate mitigations.

== Evaluation Protocol

The evaluation protocol is structured to ensure comparability across iterations:

- Baseline run: Execute scenarios against the initial system design.
- Control run: Re-execute the same scenarios after control integration.
- Regression run: Repeat high-risk scenarios on subsequent revisions.

Outcome assessment compares baseline and post-control behavior for exploit success, severity, and detectability. This logic aligns with risk and control assessment principles @nist_sp800_30_2012 @nist_sp800_53a_2022.

== Measurement and Analysis

The following metrics are used as primary indicators:

- Attack Success Rate (#acr("ASR")) per scenario class.
- Mean Time to Detect (#acr("MTTD")).
- Mean Time to Respond (#acr("MTTR")).
- Unsafe tool-call execution rate.
- Sensitive-output leakage rate.

Metrics are interpreted in context rather than isolation, because lower exploitability must be balanced with system utility and operational feasibility.

== Validity and Limitations

Three major validity threats are acknowledged:

- Coverage bias: finite scenario sets cannot represent all real-world adversarial behavior.
- Environment bias: controlled test conditions may differ from production dynamics.
- Measurement bias: metric improvements can reflect detection tuning rather than genuine risk reduction.

To reduce these threats, the methodology enforces versioned scenarios, reproducible traces, and repeated reassessment cycles.

== Ethical and Compliance Considerations

Adversarial testing in this work is strictly bounded to authorized environments and aims at defensive improvement. The methodology is aligned with secure SDLC and governance requirements from NIST and EU regulatory contexts @nist_sp800_218_2022 @eu_nis2_2022 @eu_dora_2022.
