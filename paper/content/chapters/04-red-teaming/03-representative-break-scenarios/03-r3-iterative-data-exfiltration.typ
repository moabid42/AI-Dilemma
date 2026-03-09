=== R3: Iterative Data Exfiltration

The attacker performs staged extraction: each turn recovers only low-sensitivity fragments, but the full sequence reconstructs protected information. Single-turn filters often miss this pattern because each individual request appears benign.

Representative progression:

1. Reconnaissance prompts identify wording that bypasses refusal behavior.
2. The attacker requests "summaries" or "examples" that leak partial artifacts.
3. Reassembly prompts combine fragments into sensitive outputs.

This scenario is important because it shifts detection from content-only checks to behavior-over-time checks. Strong defenses require session-level anomaly features (fragment accumulation, repeated boundary probing, escalating request specificity) and active response policies such as graduated throttling and session quarantine @owaspTop10LLM2025 @dempsey_information_2011.
