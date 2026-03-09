#import "@preview/supercharged-dhbw:3.4.0": acr

== Reference Architecture Layers

The proposed architecture separates concerns into five layers so controls can be reasoned about independently and validated end to end.

- *Access Layer*: identity proofing, session-level policy loading, and request throttling before any model interaction.
- *Intelligence Layer*: prompt assembly, retrieval orchestration, and model routing with explicit trust boundaries between instructions and data.
- *Execution Layer*: tool mediation with schema validation, authorization checks, and runtime sandboxing for high-impact actions.
- *Security Layer*: policy engine, anomaly detection, and immutable audit logging.
- *Governance Layer*: risk registry, control-evidence mapping, and #acr("KPI") tracking for security posture management.

The layering choice minimizes blast radius. A failure in one layer should degrade gracefully and not grant direct access to privileged actions. This design goal is especially important for agentic workflows where text generation can trigger execution paths.
