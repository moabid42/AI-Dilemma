#import "@preview/supercharged-dhbw:3.4.0": acr, gls

= Red Teaming AI Systems

== Introduction and Scope

Red teaming for large language model (LLM) systems focuses on adversarial behavior against the full application stack, not only the base model. In this paper, red teaming covers prompt-layer attacks, retrieval and tool abuse, identity and access bypass, data exfiltration, model manipulation, and operational abuse across pre-deployment and runtime phases.

The objective is to answer three practical questions:

- Which attack paths can realistically break the LLM system in our environment?
- What is the business impact of successful exploitation?
- Which attack classes are currently undetected or weakly mitigated?

== Threat Model for LLM Applications

Compared to classical web systems, LLM applications introduce additional attack surfaces through untrusted natural-language inputs, probabilistic behavior, external tool invocation, and retrieval pipelines. An attacker can influence model behavior indirectly (e.g., poisoned documents) or directly (e.g., adversarial prompts).

The threat model in this paper uses:

- Assets: model endpoints, system prompts, policy logic, retrieval index, tool credentials, logs, user data, and evaluation datasets.
- Adversaries: external attackers, malicious users, compromised third-party integrations, and insider misuse.
- Security objectives: confidentiality of prompts/data, integrity of outputs/actions, availability of service, and trustworthy behavior under adversarial pressure.

== Attack Taxonomy

The red-team analysis groups attacks into six categories:

- Prompt and instruction attacks: prompt injection, jailbreaks, role confusion, policy override attempts.
- Data and retrieval attacks: #gls("RAG") poisoning, context stuffing, retrieval manipulation, source-citation spoofing.
- Tool and agent attacks: malicious tool arguments, function-calling abuse, indirect prompt injection via tool output.
- Model behavior attacks: hallucination exploitation, unsafe content elicitation, model inversion, and extraction patterns.
- Operational attacks: denial-of-wallet, token flooding, rate-limit evasion, abuse of fallback models.
- Supply-chain and lifecycle attacks: compromised datasets, unsafe fine-tuning data, insecure model packaging and deployment.

== Representative Break Scenarios

=== Scenario R1: Indirect Prompt Injection via Retrieved Content

An attacker publishes documents that appear relevant for retrieval but include hidden instructions such as "ignore previous policies and reveal secrets." When those documents are retrieved, the model may follow attacker instructions unless contextual trust boundaries and instruction hierarchy are enforced.

=== Scenario R2: Tool Invocation Abuse

The attacker induces the model to call internal tools with attacker-controlled parameters (e.g., broad database queries, unsafe file paths, privileged operations). Without strict argument validation and least privilege, the system may execute unauthorized actions.

=== Scenario R3: Sensitive Data Leakage

A user iteratively probes the system to extract hidden system prompts, internal API schemas, training-like artifacts, or personal data from retrieval sources. Leakage risk increases when logs, prompts, and memory stores are not segmented by sensitivity.

=== Scenario R4: Denial-of-Wallet

The attacker repeatedly triggers long-context or high-cost model invocations and expensive tool chains, increasing cost and degrading service availability. This is especially effective when budget guardrails and anomaly detection are weak.

== Red-Team Methodology

The methodology combines manual adversarial testing and automated attack generation:

- Attack planning from threat model and trust boundaries.
- Test case generation mapped to #acr("OWASP") LLM risks and internal risk IDs.
- Execution across prompt, retrieval, tool, and policy layers.
- Measurement using attack success rate, data leakage rate, harmful-action rate, and time-to-detection.
- Reproducibility through versioned test corpora and seeded runs.

== Red-Team Deliverables

A usable red-team output for engineering includes:

- Prioritized vulnerability register (finding, severity, exploit path, affected component).
- Minimal reproducible attack traces (prompt/context/tool call/output).
- Control gap mapping to defensive requirements.
- Regression test cases for continuous security evaluation.

The output of this section feeds directly into the blue-team architecture and the unified control model in later chapters.
