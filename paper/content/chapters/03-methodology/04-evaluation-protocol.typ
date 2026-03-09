== Evaluation Protocol

The evaluation thesis is that control effectiveness should be measured as change over controlled iterations, not as single-run success. Accordingly, the protocol uses a three-stage cycle designed to preserve comparability:

- Baseline run: execute scenarios against the initial system design.
- Control run: re-execute identical scenarios after control integration.
- Regression run: repeat high-risk scenarios on subsequent revisions.

Outcome assessment compares baseline and post-control behavior for exploit success, severity, detectability, and operational overhead. This aligns with risk and control assessment principles from established assurance guidance @nist_sp800_30_2012 @nist_sp800_53a_2022.

A key assumption is environmental stability across runs (model version, policy configuration, and tooling footprint). Where this assumption does not hold, runs are annotated as non-comparable and interpreted qualitatively. This prevents overstating causal claims when platform dynamics change between evaluations.
