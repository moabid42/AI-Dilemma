#import "@preview/supercharged-dhbw:3.4.0": acr

== Lyraix Guard Realization (Implementation Mapping)

This subsection grounds the architecture in the implemented prototype documented in `Presentation_Lyraix_Guard_V0.ipynb`. The prototype operationalizes a low-latency guard model that classifies each interaction into structured security outcomes:

`{"intent": BENIGN|PROBE|ATTACK, "violation": V1..V17|NONE, "action": ALLOW|WARN|BLOCK}`

The implementation includes two execution modes:

- *Think mode*: richer reasoning with longer output budget, intended for high-ambiguity or high-risk contexts.
- *No-think mode*: strict JSON-only classification for fast inline enforcement.

This dual-mode design directly encodes a practical tradeoff between interpretive depth and latency, allowing policy-driven routing by risk tier rather than one-size-fits-all inference.

The prototype also uses explicit multi-turn context packaging by combining conversation history and current user message into a structured input frame. This supports intent extraction across turns and is central to defending salami-slicing behavior described in Chapter 4.

The guard component was adapted using an adapter-based training strategy informed by compact reasoning-transfer work @morris2026learningreason13parameters. Instead of full-model retraining, the project tuned a lightweight adapter layer to specialize the model for security intent classification and policy action prediction. This choice reduced iteration cost and enabled faster red-team/blue-team update cycles during experimentation.

Training data for the adapter was generated through a reinforcement-style triadic pipeline:

- a *teacher* model produced candidate attack and defense-oriented prompt trajectories,
- a *student* model attempted to imitate and generalize this behavior under policy constraints,
- a *judge* model scored outputs for usefulness, policy relevance, and exploit realism.

In this implementation, Gemini was used as teacher and the ChatGPT API was used as judge. The teacher role intentionally included outputs from a policy-bypass configuration identified during red-team experimentation to increase adversarial diversity in the training set. This improved attack coverage but also introduced governance and data-quality tradeoffs that required stricter filtering and post-hoc review.

The resulting dataset is assessed as medium quality: it is sufficiently rich for prototype training and ablation, but it contains uneven difficulty distribution and residual judge bias. Practically, this means measured improvements in guard behavior should be interpreted as directional rather than final. For thesis validity, this limitation is handled by explicit residual-risk reporting and by treating benchmark gains as contingent on future dataset hardening and external replication.

From a systems perspective, the guard model functions as a security mediator in front of larger assistant models and tool interfaces. This matches the "small specialized model in front of larger generative model" pattern often used for cost and latency efficiency in production serving pipelines @kwon2023efficient @yang2025qwen3.

*Placeholder Table FS-1:* Benchmark summary from notebook execution (accuracy, precision/recall, QPS, average latency for think vs no-think modes).

*Placeholder Figure FS-1:* Runtime flow diagram derived from notebook pipeline (input -> guard classification -> policy action -> downstream model/tool).
