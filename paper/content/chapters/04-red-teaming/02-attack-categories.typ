#import "@preview/supercharged-dhbw:3.4.0": gls

== Attack Categories

The thesis uses a five-family taxonomy to avoid fragmented reporting and to make cross-scenario comparison possible.

- *Prompt-layer attacks*: direct jailbreaks, instruction-hierarchy abuse, and multi-turn steering that exploit weaknesses in conversational policy retention. Prior work shows that prompt-level attacks can transfer across models and can remain effective despite alignment tuning @zou2023universal @wei2023jailbroken.
- *Retrieval attacks*: #gls("RAG") poisoning, indirect prompt injection, and citation manipulation where untrusted context becomes an instruction carrier. This family is particularly relevant for enterprise assistants connected to internal knowledge bases @yi2023promptinjection @chen2024struq @hines2024spotlighting.
- *Tool-chain attacks*: unsafe function invocation, parameter smuggling, and privilege escalation via model-mediated action selection. Agentic systems amplify risk because text misclassification can become an executable action @ruan2023identifying.
- *Data attacks*: prompt leakage, latent memory extraction, and staged exfiltration of sensitive fragments from context, logs, or attached repositories.
- *Economic and availability attacks*: token flooding, recursive interaction loops, and denial-of-wallet strategies that target cost and service reliability rather than confidentiality.

The analytical benefit of this taxonomy is that each family maps to distinct detection signals. For example, prompt-layer attacks often manifest as semantic drift across turns, while tool-chain attacks manifest as abnormal argument patterns and authorization mismatches.
