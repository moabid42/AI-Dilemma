#import "@preview/supercharged-dhbw:3.4.0": acr

== Operating Model and Rollout

The final solution uses behavioral analysis and intent extraction across prompts as a first-class runtime control. Concretely, each session is scored not only on current-message risk but also on trajectory features:

- escalation pace (benign -> probe -> attack),
- repeated boundary testing,
- refusal adaptation patterns,
- abnormal role-claim frequency,
- tool-target specificity growth over turns.

These features improve detection of attacks that are weakly malicious per turn but strongly malicious in aggregate, including salami-slicing and staged exfiltration strategies @russinovich2025greatwritearticlethat.

Control decisions are then policy-bound:

1. `ALLOW`: low-risk trajectories continue.
2. `WARN`: medium-risk trajectories trigger friction (confirmation, narrower tool scope, extra logging).
3. `BLOCK`: high-risk trajectories are denied and escalated to monitoring workflows.

For enterprise operation, rollout should occur in three phases:

1. *Shadow mode*: classify and log without enforcement to calibrate false positives.
2. *Soft enforcement*: activate `WARN` with human override and constrained `BLOCK`.
3. *Full enforcement*: policy-driven gating with incident response playbooks and regression gates in CI/CD.

Governance alignment is achieved by connecting each policy decision to evidence artifacts (classification log, detection rationale, response action, and post-incident update). This supports defensible operations under AI and cybersecurity governance expectations @nistAIRMF2023 @nistGenAIProfile2024 @eu_ai_act_2024.

*Placeholder Figure FS-2:* Control-to-evidence matrix linking red-team scenarios (R1-R5) to runtime signals, policy actions, and audit artifacts.
