=== R4: Multi-Turn Steering (Salami Slicing / Crescendo-Style)

This thesis adds an empirical finding from our own adversarial testing: a multi-turn "salami slicing" strategy can gradually steer the model from benign prompts toward policy-violating output without an obvious single-step jailbreak trigger. This behavior is consistent with the Crescendo attack pattern described by Russinovich et al. @russinovich2025greatwritearticlethat.

In practical terms, the attacker starts with harmless framing questions, then incrementally narrows the request scope until the model accepts a trajectory that should have been blocked. The steering often combines: rapport building, fictional framing, "for awareness only" pretexts, and gradual substitution of target entities. No single turn is maximally malicious, but the cumulative trajectory is.

Current observation in this thesis project: this strategy remains effective in our recent manual tests against major production assistants (including ChatGPT and Claude), with variability across prompt phrasing and turn depth.

Why this remains effective:

- Safety filters are commonly optimized for high-risk *single* prompts.
- Conversational memory can preserve attacker-introduced framing across many turns.
- Soft refusals can leak structure that helps the attacker calibrate the next step.

For research instrumentation, each run should log at least: turn count to first policy degradation, first unsafe detail emitted, refusal-to-compliance transition point, and whether the attack transfers after paraphrase. This gives measurable evidence of how quickly safety posture erodes under persistent steering.

*Placeholder Figure RT-1:* Screenshot sequence of a successful salami-slicing jailbreak attempt against ChatGPT (to be inserted by author).

*Placeholder Figure RT-2:* Screenshot sequence of a successful salami-slicing jailbreak attempt against Claude (to be inserted by author).

*Placeholder Figure RT-3:* Annotated trajectory timeline showing benign-to-harmful semantic drift across turns (to be inserted by author).
