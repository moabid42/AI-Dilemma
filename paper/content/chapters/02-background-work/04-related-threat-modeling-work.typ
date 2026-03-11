== B4: Related Threat-Modeling and Security Research

This section synthesizes prior work from three angles: threat modeling methods, offensive prompt/jailbreak research, and defensive mechanisms. The goal is to identify what is already known and what remains unresolved for deployable security.

=== Classical Threat Modeling as a Base Layer

STRIDE and data-centric threat modeling provide structured techniques to define assets, trust boundaries, attacker goals, and abuse cases @shostack_threat_2014 @shevchenko_datacentric_2016. Privacy-centric approaches such as LINDDUN are important when conversational systems process personal or sensitive contextual data @deng_linddun_2011.

These methods remain useful for AI systems, but they require extension because language-mediated control creates dynamic trust boundaries. The same text fragment can be data in one stage and executable instruction in another stage, depending on orchestration logic.

=== General Prompt Injection Research

Early application-level work established indirect prompt injection as a practical threat against real integrations, not just toy examples @greshake2023youvesignedforcompromising. Later studies broadened the analysis across architecture variants and showed that injection susceptibility varies by prompting strategy, model behavior, and context composition design @benjamin2024systematicallyanalyzingpromptinjection.

Benchmark-driven work formalized attack/defense comparisons, enabling reproducible evaluation across tasks and models @liu2024formalizing_usenix. In parallel, detection research introduced classifier-based and feature-engineering approaches for identifying suspicious prompts and context fragments @ji2025detectionmethodpromptinjection.

A key conclusion across these papers is convergence on the same operational constraint: robust defense requires both detection and policy enforcement, otherwise high-confidence alerts fail to block downstream impact.

=== Red-Team and Jailbreak Progression

Red-teaming literature moved from single-turn jailbreak strings to adaptive, multi-turn campaign strategies. Crescendo demonstrates that gradual conversational steering can bypass many static safeguards by distributing malicious intent across turns @russinovich2025greatwritearticlethat. X-Teaming extends this with adaptive multi-agent attack and defense loops, emphasizing iterative adversarial pressure rather than one-shot prompts @xteaming2025.

M2S shows that multi-turn attack traces can often be transformed into stronger single-turn payloads, which matters for both benchmark construction and defense stress-testing @ha2025m2s. Practitioner documentation also catalogs linear jailbreaking and related adversarial prompting patterns seen in field testing, useful as an operational complement to peer-reviewed results @deepteam_linear_jailbreak_docs.

The literature linked by the provided "ActorAttack" reference (arXiv:2410.10700) focuses on uncovering safety gaps through natural distribution shifts, reinforcing the broader finding that models can expose vulnerabilities under realistic prompt distributions, not only synthetic attack corpora @ren2025llmsknowvulnerabilitiesuncover.

=== Defense Mechanisms and Their Tradeoffs

Current defenses fall into several families:

- Prompt/context transformation and isolation (for example, structured queries, spotlighting) @chen2024struq @hines2024spotlighting.
- Detection layers (classifier or hybrid heuristic pipelines) @ji2025detectionmethodpromptinjection @gosmar2025promptinjectiondetectionmitigation.
- Robustness techniques (smoothing, adversarial training, robust refusal evaluation) @robey2024smoothllm @ji2024semanticsmoothing @mazeika2024harmbench.
- Multi-turn specialized defenses, including context-aware and graph-based approaches @kulkarni2025temporalcontextawareness @huang2025attentionawaregnn @ivry2025sentinel.
- Attack-informed defensive training strategies @chen2025defensepromptinjection.

These methods improve baseline resilience but introduce practical tradeoffs in latency, false positives, developer overhead, and maintenance complexity. No single method currently provides durable protection across direct/indirect, single-turn/multi-turn, and text/action attack classes simultaneously.

=== Limits of Formal Guarantees

Theoretical and position papers argue that absolute safety guarantees for open-ended LLM behavior are infeasible under realistic assumptions, especially when systems interact with untrusted external context and evolving task distributions @no_red_lines_2025. This does not invalidate defense work; it reframes the goal from "perfect prevention" to measurable risk reduction with explicit residual-risk management.

=== Section Synthesis

Prior research provides strong attack evidence and promising defense building blocks, but practical deployment still suffers from fragmentation: offensive benchmarks, runtime controls, and governance artifacts are often disconnected. This fragmentation is the direct bridge to the research gap articulated next.
