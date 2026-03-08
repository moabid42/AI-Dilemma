#import "@preview/supercharged-dhbw:3.4.0": acr

= Background Work

This section provides the theoretical and practical baseline required for the red/blue analysis. To keep the discussion focused and reproducible, the background is divided into four parts.

== B1: Foundations of LLM Security

LLM security extends classical information security by introducing language-mediated control channels. User prompts, retrieved context, and tool outputs can all influence model behavior. This makes trust boundaries less explicit than in deterministic software. Security analysis must therefore include behavioral robustness in addition to confidentiality, integrity, and availability.

== B2: Threat Landscape for AI Applications

Common threat patterns include prompt injection, jailbreak attempts, retrieval poisoning, unauthorized tool invocation, and sensitive data leakage. In production systems, these threats are amplified by integration complexity: APIs, plugins, identity systems, logs, and third-party services create cross-layer attack paths.

== B3: Existing Frameworks and Standards

Current guidance from #acr("NIST") risk and control frameworks @nist_sp800_30_2012 @nist_sp800_53_2020, secure software development guidance @nist_sp800_218_2022, cybersecurity governance models @nist_csf_2024, and logging/monitoring recommendations @kent_guide_2006 @dempsey_information_2011 provides useful control baselines. Regulatory frameworks such as NIS2 @eu_nis2_2022 and DORA @eu_dora_2022 further define resilience and accountability requirements for organizations deploying AI-enabled services.

In addition, software supply-chain standards and initiatives such as SBOM frameworks @ntia_sbom_minimum_2021 @spdx_spec_3_0_1 @cyclonedx_spec_2025 and artifact integrity frameworks @slsa_v1_2_2025 @sigstore_cosign_docs are increasingly relevant for model-enabled systems where trust depends on both data and deployment provenance.

== B4: Related Threat-Modeling Work

Threat modeling methods such as STRIDE @shostack_threat_2014 and data-centric modeling approaches @shevchenko_datacentric_2016 provide structured mechanisms to reason about attacker goals and trust boundaries. Privacy-oriented perspectives such as LINDDUN @deng_linddun_2011 are relevant where LLM systems process personal data and cross-system context.

== B5: Research Gap and Design Need

Existing work usually prioritizes one side: either offensive evaluation (attack success) or defensive hardening (control checklists). There is still limited end-to-end guidance that continuously links red-team findings to blue-team implementation, ownership, and evidence. This paper addresses that gap by proposing an integrated lifecycle model.
