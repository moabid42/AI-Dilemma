#import "@preview/supercharged-dhbw:3.4.0": acr

== B2: Threat Landscape for AI Applications

This section argues that AI application risk emerges from cross-layer interactions, not isolated model flaws. The attacker does not need to break model weights. It is often sufficient to steer context, abuse orchestration logic, or exploit weak execution controls.

=== Threat Surface Decomposition

For operational analysis, the AI application attack surface can be decomposed into five interacting layers:

- Input layer: user prompts, uploaded files, and conversational state.
- Context layer: retrieval corpora, connector outputs, and memory stores.
- Model layer: instruction following, refusal behavior, and generation policy.
- Action layer: tool/function invocation, API side effects, and workflow triggers.
- Operations layer: identity, secrets, logging, monitoring, and incident response.

Prompt-injection work consistently shows that compromises often start in one layer and terminate in another. For example, malicious text in retrieved context (context layer) may induce unauthorized function execution (action layer) @greshake2023youvesignedforcompromising @liu2024formalizing_usenix.

=== OWASP LLM Top 10 vs Agentic Security Focus

OWASP guidance for LLM applications emphasizes risks such as prompt injection, sensitive information disclosure, supply chain weaknesses, excessive agency, and insecure plugin/tool integrations @owaspTop10LLM2025 @owasp_genai_llm_top10_2026. This framing is still application-oriented, but many controls remain centered on model I/O boundaries.

Agentic security work shifts emphasis toward multi-step autonomy and delegated execution: permission scope, plan decomposition, cross-tool trust, and human override reliability @owasp_genai_agentic_initiative_2026. The practical difference is this:

- LLM Top-10 style risks ask: "Can malicious input cause unsafe model output?"
- Agentic risk asks: "Can malicious influence cause unsafe system *actions* over time?"

The second question is strictly harder because safe single-turn outputs do not guarantee safe multi-turn trajectories.

=== Core Threat Families in Real Deployments

==== Prompt Injection and Instruction Override

Direct injection comes from the user channel. Indirect injection comes from untrusted context sources such as websites, documents, emails, or retrieved records. Empirical analyses show that indirect variants are particularly dangerous because they can bypass assumptions that "user input" is the only adversarial channel @greshake2023youvesignedforcompromising @benjamin2024systematicallyanalyzingpromptinjection.

==== Multi-Turn Steering and Salami-Slicing

Multi-turn attacks avoid immediate policy triggers by gradually shifting the conversation toward restricted targets. Each step may appear benign in isolation, but aggregate session intent drifts toward exploit behavior. Crescendo-style jailbreak chains and related studies show strong attack effectiveness against systems that rely on turn-local safety checks @russinovich2025greatwritearticlethat @xteaming2025 @ha2025m2s.

==== Retrieval and Context Poisoning

When retrieval quality and trust validation are weak, attacker-controlled or attacker-influenced documents become policy-carrying inputs. This can induce data exfiltration, tool misuse, or corruption of downstream decisions. Structured-query and spotlighting defenses improve robustness but do not eliminate risk under adaptive attacks @chen2024struq @hines2024spotlighting.

==== Tool Invocation Abuse

Agentic systems expose explicit execution interfaces. Attackers can exploit prompt interpretation ambiguities to invoke high-impact tools, escalate privileges through chained calls, or force expensive operations that create denial-of-wallet conditions. LM-agent risk studies show that text-only safety checks are insufficient once actions are reachable @ruan2023identifying.

==== Data Exfiltration and Confidentiality Failures

Sensitive information can leak via direct answers, partial reconstruction over multiple turns, retrieval references, or tool-returned artifacts. Exfiltration is often incremental rather than one-shot. As a result, confidentiality controls need session-level anomaly detection and strict output governance.

==== Availability and Economic Abuse

AI systems are vulnerable to classic availability attacks and AI-specific resource abuse. Attackers can induce high token usage, repeated tool calls, and expensive chain execution. This is operationally similar to denial-of-service but economically framed as denial-of-wallet.

=== Why Existing Defenses Still Fail in Practice

Recent detection approaches combine pretrained models, heuristics, and multi-agent screening, and these methods improve baseline resilience @ji2025detectionmethodpromptinjection @gosmar2025promptinjectiondetectionmitigation. However, three failure modes remain common:

- Weak temporal modeling: defenses inspect one turn, while attacks unfold across sessions.
- Weak action coupling: safety classifier allows text, but execution policy still permits dangerous tools.
- Weak adaptability: controls overfit known attack strings and degrade under paraphrase or strategy variation.

No-red-lines style arguments reinforce that absolute formal safety guarantees for open-ended LLM behavior are currently unattainable; practical security must be risk-managed, monitored, and continuously validated @no_red_lines_2025.

=== Section Synthesis

The threat landscape is best modeled as adversarial control over context and execution pathways across time. This motivates a combined red/blue methodology that tests end-to-end attack chains and maps each failure to an enforceable defensive control.
