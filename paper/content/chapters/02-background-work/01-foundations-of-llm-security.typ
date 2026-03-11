#import "@preview/supercharged-dhbw:3.4.0": acr

== B1: Foundations of LLM Security

The core claim of this section is that #acr("LLM") security cannot be reduced to a model-level safety filter. An LLM is a probabilistic next-token engine embedded in a larger socio-technical system. Therefore, secure operation depends on both model internals (tokenization, attention, positional representation, decoding) and system externals (prompt assembly, retrieval, tool execution, and operator controls).

=== What an LLM Is in Operational Terms

Modern language models implement conditional next-token prediction: given a sequence of tokens $x_{1..t}$, the model estimates a probability distribution over the next token $x_{t+1}$ and samples or selects from that distribution @vaswani2017attention @brown2020gpt3. This framing matters for security because the model does not "understand" intent in a rule-based sense. It computes likelihoods over continuations, and malicious prompts can steer those likelihoods toward unsafe trajectories.

In production pipelines, the model usually consumes a composed context window that includes system policy text, developer instructions, user messages, retrieved documents, and sometimes tool outputs. Security-relevant behavior emerges from this composition, not from user input alone. This is exactly why indirect prompt injection works: the attacker controls one context channel (for example, a retrieved document) to influence the final continuation @greshake2023youvesignedforcompromising @yi2023promptinjection.

=== Attention as the Core Computation

Transformer models replace recurrence with attention, where each token representation attends to other token representations through query, key, and value projections @vaswani2017attention. In simplified form, attention computes weighted mixtures of context tokens, where weights are determined by token-to-token compatibility. The important security implication is that instruction dominance is not hardcoded; it is learned and context-dependent. If malicious text creates stronger local relevance patterns than benign guard instructions, the model may prioritize the attacker's framing.

This makes prompt attacks fundamentally contextual rather than purely lexical. Defenses that only match forbidden strings are brittle because semantically equivalent attacks can preserve attention influence while changing surface form. Empirical work on prompt injection and jailbreak transferability repeatedly shows this robustness gap @liu2024formalizing_usenix @benjamin2024systematicallyanalyzingpromptinjection @mazeika2024harmbench.

=== Why Positional Encoding Exists and Why It Matters for Security

Self-attention by itself is permutation-invariant: without position signals, the token set has no reliable order information. Positional encoding injects order so the model can distinguish "A before B" from "B before A" @vaswani2017attention. Original transformers used fixed sinusoidal encodings; later systems widely adopted relative/rotary schemes for better long-context behavior @su2021roformer.

From a security perspective, positional representation changes how attacks scale across long sessions. Multi-turn manipulation attacks exploit position-sensitive accumulation: the attacker does not need one catastrophic prompt if they can progressively bias context over many turns. This attack pattern appears in multi-turn jailbreak literature and mirrors the salami-slicing behavior observed in practical red-team operations @russinovich2025greatwritearticlethat @xteaming2025 @ha2025m2s.

Long-context operation introduces a second risk: policy dilution. Even when the system prompt is present, later high-salience tokens, repeated attacker framing, or retrieval-inserted directives can dominate effective attention in local regions. Therefore, robust defenses require session-level state tracking and intent drift analysis, not only static prompt templates.

=== From LLMs to Agents

An agentic AI application differs from a plain chat endpoint because model output can trigger actions: API calls, file operations, workflow transitions, external requests, or database writes. Architecturally, this turns natural language into a control interface for software operations. Prior work on LM agents highlights that risk is no longer limited to unsafe text; it includes unauthorized effects in downstream systems @ruan2023identifying @yao2023react @schick2023toolformer.

Security posture must therefore shift from "content moderation" to "decision governance". A response that looks harmless in text can still be dangerous if it encodes an unauthorized tool invocation. Conversely, a suspicious prompt may be safe if tool permissions and confirmation gates are well constrained. This is why agent security needs explicit authorization boundaries, schema validation, and execution-time policy checks.

=== What MCP Is and Why It Is Security-Critical

The Model Context Protocol (#acr("MCP")) standardizes how models connect to external tools and context providers @anthropic_mcp_2024 @mcp_spec_2025. Practically, MCP reduces integration friction by defining consistent transport, tool declarations, and context exchange patterns. For engineering productivity this is a major advantage. For security, it creates a clear requirement: every standardized connection is also a standardized attack surface.

If an application accepts untrusted context through MCP servers and passes it to the model without trust labeling, the model may treat attacker-controlled data as high-priority instruction material. Similarly, if tool capabilities are exposed without least-privilege scoping, prompt manipulation can escalate into real side effects. MCP itself is not insecure; the risk lies in deployment decisions around trust partitioning, authn/authz, and action validation.

=== Implication for This Thesis

The background evidence supports one design principle used throughout this thesis: LLM security is a control problem over *context and action pathways*, not only over generated text. That principle motivates the integrated red/blue lifecycle developed later, where multi-turn behavior, indirect context channels, and tool-use controls are evaluated together rather than independently.
