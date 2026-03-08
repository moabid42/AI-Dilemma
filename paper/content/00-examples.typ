#import "@preview/supercharged-dhbw:3.4.0": acr, gls

= Practical AI Security Examples

== Example 1: Prompt Injection Against a Support Assistant

*Context:* A customer-support assistant uses #gls("RAG") to retrieve documentation.

*Attack path:* An attacker inserts hidden instructions into a public help article. The model retrieves the article and follows attacker directives.

*Observed risk:* Policy bypass and potential data leakage.

*Blue-team controls:*

- Trust scoring for retrieval sources.
- Instruction hierarchy enforcement.
- Output filter for sensitive data.

== Example 2: Tool Abuse in an Agentic Workflow

*Context:* An internal operations assistant can call database and ticketing tools.

*Attack path:* The attacker crafts prompts that push the model to submit privileged tool arguments.

*Observed risk:* Unauthorized actions through model-mediated execution.

*Blue-team controls:*

- Tool allowlist and strict schema validation.
- #acr("RBAC") for service identities.
- Step-up approval for destructive actions.

== Example 3: Denial-of-Wallet on Public LLM Endpoint

*Context:* A public API serves long-context requests with expensive models.

*Attack path:* Automated clients submit high-volume, high-token prompts and force repeated tool chains.

*Observed risk:* Cost spike and degraded availability (#acr("DoW")).

*Blue-team controls:*

- Adaptive rate limits and token quotas.
- Per-tenant spend caps and alerting.
- Fallback policies that reduce capability safely.

== Example 4: Retrieval Poisoning in Knowledge Base Pipelines

*Context:* Enterprise documents are ingested daily into the retrieval index.

*Attack path:* A compromised source contributes manipulated documents that bias outputs.

*Observed risk:* Integrity loss in generated decisions and recommendations.

*Blue-team controls:*

- Ingestion signing and provenance checks.
- Document-level trust labels.
- Canary tests for integrity drift.

== Example 5: Unified Red-Blue Workflow

*Context:* Security teams need continuous assurance, not one-time testing.

*Workflow:*

- Red team defines attack hypotheses and executes test suites.
- Blue team maps each finding to guardrails and owners.
- CI security gates block releases when #acr("ASR") exceeds thresholds.
- #acr("SIEM") detection rules are updated from new attack traces.

*Outcome:* Reduced exploitability and measurable improvement in #acr("MTTD") and #acr("MTTR").
