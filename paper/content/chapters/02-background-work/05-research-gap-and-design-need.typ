== B5: Research Gap and Design Need

The evidence reviewed in this chapter points to a consistent gap: current work is rich in either attack demonstrations or control catalogs, but weaker in integrated operational methods that connect both sides in a continuous engineering loop.

=== Gap 1: Single-Turn Evaluation Dominance

Many evaluations still prioritize single-prompt attack success, while real adversaries increasingly use multi-turn steering, context poisoning, and staged escalation. As a result, reported defense performance can overestimate real-world robustness when session-level behavior is not measured @russinovich2025greatwritearticlethat @xteaming2025 @kulkarni2025temporalcontextawareness.

=== Gap 2: Detection-Action Disconnect

A frequent architecture pattern places detection at the text boundary but leaves weak action governance in downstream tool execution. This creates a dangerous false sense of security: suspicious behavior is observed but not reliably blocked at the point of consequence @ruan2023identifying @gosmar2025promptinjectiondetectionmitigation.

=== Gap 3: Weak Traceability Across the Lifecycle

Governance frameworks require evidence, but many AI deployments cannot trace from attack finding to control owner, implementation artifact, runtime signal, and residual-risk statement. Without this traceability, organizations cannot demonstrate security maturity or learn effectively from incidents @nistAIRMF2023 @nist_sp800_53a_2022.

=== Gap 4: Limited Protocol-Aware Security Patterns

As MCP-style architectures gain adoption, context and tool interoperability improve, but practical guidance on trust partitioning, permission boundaries, and protocol-level enforcement remains immature in mainstream literature @anthropic_mcp_2024 @mcp_spec_2025.

=== Design Need for This Thesis

These gaps motivate the design requirement that drives the rest of this paper: a threat-driven lifecycle that continuously links red-team evidence to blue-team controls and verifies outcomes through measurable operational signals.

Concretely, the required design properties are:

- Multi-turn aware: evaluate and defend against intent drift across sessions.
- Action-coupled: bind prompt/context risk decisions to tool execution policy.
- Evidence-driven: maintain reproducible mapping from attacks to controls to metrics.
- Operationally feasible: deploy with realistic latency, ownership, and monitoring overhead.

This thesis addresses the gap by proposing and evaluating an integrated architecture and process model that combines adversarial testing, behavioral analysis, and policy enforcement within one repeatable lifecycle.
