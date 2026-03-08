#import "@preview/supercharged-dhbw:3.4.0": acr

= Final Solution: Architecture and Design

The proposed architecture unifies red-team testing and blue-team controls into one lifecycle model called *Threat-Driven Secure LLM Lifecycle (TSLL)*.

== Core Design Principle

Every discovered attack path must be translated into a concrete control with an owner, deployment location, validation criterion, and monitoring evidence.

== TSLL Lifecycle

- Threat Modeling: define assets, trust boundaries, and attacker goals.
- Adversarial Testing: execute attack libraries and quantify exploitability.
- Control Engineering: implement layered safeguards across input, retrieval, model, and tool layers.
- Runtime Defense: monitor behavior, detect abuse, and trigger response actions.
- Continuous Learning: feed incidents and findings back into test suites and policies.

This lifecycle operationalizes security-by-design and secure-SDLC principles @nist_sp800_218_2022 and aligns governance expectations from enterprise cybersecurity and regulatory contexts @nist_csf_2024 @eu_nis2_2022 @eu_dora_2022.

== Reference Architecture Layers

- Access Layer: identity, session policy, request throttling.
- Intelligence Layer: prompt handling, retrieval orchestration, model routing.
- Execution Layer: controlled tool calling, authorization gates, sandboxing.
- Security Layer: policy engine, anomaly detection, audit logging.
- Governance Layer: risk registry, evidence mapping, KPI reporting.

== Design Outcome

The architecture provides a closed loop between offense and defense: red-team findings create blue-team actions, and blue-team telemetry improves future red-team scenarios.

From an assurance perspective, TSLL maps risks to controls and controls to evidence, which improves auditability and traceability in practice @nist_sp800_53a_2022 @iso_19011_2018.
