#import "@preview/supercharged-dhbw:3.4.0": acr

== B3: Existing Frameworks and Standards

The central claim of this section is that no single framework currently provides complete guidance for securing agentic #acr("LLM") systems. Organizations must compose governance, engineering, and runtime controls from multiple standards.

=== Risk and Governance Baselines

#acr("NIST") risk frameworks provide the core vocabulary for identifying threats, estimating impact/likelihood, and assigning treatment decisions @nist_sp800_30_2012 @nistAIRMF2023 @nistGenAIProfile2024. In practice, these documents are strong at governance and process design, but they are intentionally technology-agnostic. They do not prescribe detailed patterns for prompt-chain hardening or tool-use gating.

The NIST CSF and SP 800-53 families add control structure for organizational cybersecurity programs and assessment activities @nist_csf_2024 @nist_sp800_53_2020 @nist_sp800_53a_2022. These controls are directly reusable for identity, logging, change management, and incident handling in AI deployments.

=== Software and Supply-Chain Assurance

AI security inherits software supply-chain risk and extends it with model/data provenance concerns. SSDF guidance and SBOM-oriented practices support secure build and release processes, while artifact signing and provenance frameworks improve trust in deployment components @nist_sp800_218_2022 @ntia_sbom_minimum_2021 @spdx_spec_3_0_1 @cyclonedx_spec_2025 @slsa_v1_2_2025 @sigstore_cosign_docs.

For LLM systems, provenance must cover at least four artifact classes:

- Application code and orchestration logic.
- Model versions and serving configuration.
- Retrieval corpus snapshots and embedding pipelines.
- Prompt templates, policy files, and guardrail models.

Without this artifact-level traceability, post-incident root-cause analysis is unreliable.

=== Operational Security and Monitoring Standards

Classical monitoring guidance remains highly relevant for AI applications because most high-impact incidents are detected operationally, not during static design review @kent_guide_2006 @dempsey_information_2011 @owasp_logging_cheatsheet. Organizations need structured telemetry for:

- Prompt/context provenance and trust labels.
- Guard model decisions with confidence and rationale fields.
- Tool invocation traces with caller identity and authorization basis.
- Session-level behavioral features (turn count, intent drift signals, escalation markers).

Incident response playbooks should treat AI misuse as first-class security events, integrating SOC workflows and post-incident control hardening @nelson_incident_2025.

=== Regulatory Context for EU Deployments

For EU-aligned deployments, NIS2, DORA, GDPR, and the AI Act jointly shape accountability expectations around resilience, data handling, and risk controls @eu_nis2_2022 @eu_dora_2022 @noauthor_regulation_nodate @eu_ai_act_2024. Even where these regulations do not prescribe specific LLM mitigations, they establish obligations for governance evidence, risk treatment, and auditable operational controls.

=== AI-Specific Community Guidance

OWASP LLM and GenAI guidance offers practical threat taxonomies that are closer to real deployment pain points than many general standards @owaspTop10LLM2025 @owasp_genai_llm_top10_2026. The newer agentic initiative extends this by emphasizing autonomous workflows, tool abuse, and multi-step control failures @owasp_genai_agentic_initiative_2026.

MITRE ATLAS complements this with adversary technique mapping. It enables traceability from observed attack behavior to defensive controls and detection engineering @mitreAtlas.

=== Standards Gap for Agentic + MCP Ecosystems

Although standards coverage is broad, two gaps remain visible in real projects:

- Cross-turn behavioral assurance: most frameworks assume discrete events, while agentic attacks evolve over sessions.
- Context-protocol assurance: standards rarely provide concrete controls for trust partitioning and policy enforcement across MCP-style context and tool channels @anthropic_mcp_2024 @mcp_spec_2025.

This gap does not imply standards failure. It implies a need for system-level design patterns that operationalize existing controls for AI-native threat paths.

=== Section Synthesis

Existing frameworks provide strong foundations for governance, controls, and compliance, but they must be integrated with AI-specific attack evidence and runtime telemetry. This integration requirement directly motivates the lifecycle design proposed later in this thesis.
