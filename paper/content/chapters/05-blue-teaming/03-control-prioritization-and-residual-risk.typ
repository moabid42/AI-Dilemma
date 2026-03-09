== Control Prioritization and Residual Risk

Blue-team implementation is constrained by time, cost, and system complexity; therefore, controls must be prioritized by risk reduction per operational effort, not by catalog completeness.

This thesis uses a practical prioritization sequence:

- First, mitigate high-severity exploit paths with low implementation friction (for example, tool allowlisting and output policy gates).
- Second, deploy detection and monitoring controls for medium-confidence attack classes where prevention is incomplete.
- Third, harden long-term structural risks (data provenance, governance integration, and cross-team accountability).

Even after layered controls, residual risk remains for adaptive multi-turn attacks and transfer-based jailbreak strategies documented in current literature @zou2023universal @robey2024smoothllm @zhang2025jailguard @ji2024semanticsmoothing.

Implication for final architecture: blue-team design should encode residual-risk ownership and explicit acceptance criteria, rather than implying absolute robustness.
