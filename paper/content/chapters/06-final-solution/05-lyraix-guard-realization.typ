#import "@preview/supercharged-dhbw:3.4.0": acr

== Lyraix Guard Realization (Implementation Mapping)

This subsection grounds the architecture in the implemented prototype documented in `Presentation_Lyraix_Guard_V0.ipynb`. The prototype operationalizes a low-latency guard model that classifies each interaction into structured security outcomes:

`{"intent": BENIGN|PROBE|ATTACK, "violation": V1..V17|NONE, "action": ALLOW|WARN|BLOCK}`

The implementation includes two execution modes:

- *Think mode*: richer reasoning with longer output budget, intended for high-ambiguity or high-risk contexts.
- *No-think mode*: strict JSON-only classification for fast inline enforcement.

This dual-mode design directly encodes a practical tradeoff between interpretive depth and latency, allowing policy-driven routing by risk tier rather than one-size-fits-all inference.

The prototype also uses explicit multi-turn context packaging by combining conversation history and current user message into a structured input frame. This supports intent extraction across turns and is central to defending salami-slicing behavior described in Chapter 4.

From a systems perspective, the guard model functions as a security mediator in front of larger assistant models and tool interfaces. This matches the "small specialized model in front of larger generative model" pattern often used for cost and latency efficiency in production serving pipelines @kwon2023efficient @yang2025qwen3.

*Placeholder Table FS-1:* Benchmark summary from notebook execution (accuracy, precision/recall, QPS, average latency for think vs no-think modes).

*Placeholder Figure FS-1:* Runtime flow diagram derived from notebook pipeline (input -> guard classification -> policy action -> downstream model/tool).
