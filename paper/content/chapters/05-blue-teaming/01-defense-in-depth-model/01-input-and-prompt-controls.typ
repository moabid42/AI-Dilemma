=== Input and Prompt Controls

The first defensive layer targets the earliest attack surface: user-controlled natural-language input. The goal is not only to block obvious abuse strings, but to constrain interaction trajectories that can evolve into policy violations over multiple turns.

Operational controls include input normalization, context-length constraints, structured prompt templates, and adversarial pattern filtering informed by known jailbreak techniques @wei2023jailbroken @russinovich2025greatwritearticlethat.

A critical design implication is that prompt controls must preserve instruction hierarchy under conversational drift. Without hierarchy enforcement, multi-turn steering attacks can bypass single-turn safeguards even when initial prompts look benign.
