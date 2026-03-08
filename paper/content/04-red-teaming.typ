#import "@preview/supercharged-dhbw:3.4.0": acr, gls

= Red Teaming

Red teaming evaluates how an adversary can force unsafe, unauthorized, or high-impact behavior from an LLM system. The analysis covers both direct attacks (malicious user prompts) and indirect attacks (poisoned retrieved content, manipulated tool responses).

== Red-Team Design

The red-team phase is grounded in structured threat modeling to ensure coverage of trust boundaries, assets, and attacker intents @shostack_threat_2014 @shevchenko_datacentric_2016. Risk prioritization follows likelihood-impact principles aligned with NIST risk assessment guidance @nist_sp800_30_2012.

== Attack Categories

- Prompt-layer attacks: injection, jailbreak, instruction-hierarchy abuse.
- Retrieval attacks: #gls("RAG") poisoning, context manipulation, citation spoofing.
- Tool-chain attacks: malicious function parameters, privilege escalation via tool calls.
- Data attacks: system prompt leakage, sensitive data extraction, cross-tenant exposure.
- Economic and availability attacks: token flooding and denial-of-wallet.

== Representative Break Scenarios

=== R1: Indirect Prompt Injection

An attacker publishes crafted content in a data source likely to be retrieved. The model consumes this content and executes hidden attacker instructions.

=== R2: Tool Invocation Abuse

An attacker causes the model to call internal tools with unsafe arguments. Without strict validation and authorization, the system performs unauthorized actions.

=== R3: Iterative Data Exfiltration

The attacker probes the model in multiple turns to recover sensitive fragments from prompts, logs, memory, or retrieval stores.

=== R4: Multi-Turn Steering (Salami Slicing / Crescendo-Style)

This thesis adds an empirical finding from our own adversarial testing: a multi-turn "salami slicing" strategy can gradually steer the model from benign prompts toward policy-violating output without an obvious single-step jailbreak trigger. This behavior is consistent with the Crescendo attack pattern described by Russinovich et al. @russinovich2025greatwritearticlethat.

In practical terms, the attacker starts with harmless framing questions, then incrementally narrows the request scope until the model accepts a trajectory that should have been blocked. The key security implication is that single-turn filters can appear effective while multi-turn conversational state still enables unsafe convergence.

Current observation in this thesis project: this strategy remains effective in our recent manual tests against major production assistants (including ChatGPT and Claude), with variability across prompt phrasing and turn depth.

*Placeholder Figure RT-1:* Screenshot sequence of a successful salami-slicing jailbreak attempt against ChatGPT (to be inserted by author).

*Placeholder Figure RT-2:* Screenshot sequence of a successful salami-slicing jailbreak attempt against Claude (to be inserted by author).

== Red-Team Evaluation Method

- Build scenario-driven attack suites mapped to risk categories.
- Execute tests under controlled and production-like conditions.
- Measure attack success rate, severity, reproducibility, and detection latency.
- Produce reproducible traces to support defensive remediation.

Methodologically, this phase follows a repeatable adversarial testing loop: hypothesis definition, controlled execution, evidence capture, and regression conversion. The approach is aligned with secure lifecycle expectations in #acr("SDLC") settings @nist_sp800_218_2022.

The output of red teaming in this paper is a prioritized vulnerability-to-control map used by the blue-team section.
