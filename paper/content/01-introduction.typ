#import "@preview/supercharged-dhbw:3.4.0": acr

= Introduction

== Motivation

Large language model systems are now embedded in customer support, internal operations, software engineering workflows, and decision-support pipelines. This adoption increases organizational productivity, but also introduces new and poorly understood attack surfaces. Traditional application security controls are not sufficient when the system behavior depends on probabilistic model outputs, dynamic context retrieval, and autonomous tool execution.

At the same time, organizations face pressure to deploy AI quickly while maintaining compliance, resilience, and trust. This creates an engineering dilemma: if safety controls are too weak, systems become exploitable; if controls are too rigid, business value and usability decline. The motivation of this paper is to resolve this dilemma through a practical security model that combines offensive and defensive perspectives.

== Research Question and Objectives

=== Primary Research Question

How can organizations systematically secure LLM-based applications by integrating red teaming and blue teaming into one continuous, measurable, and operationally feasible framework?

=== Specific Objectives

- Identify realistic attack paths that can break LLM applications across prompt, retrieval, tool, and operational layers.
- Analyze which defensive controls are most effective against these attack classes.
- Design an integrated architecture and process model that connects attack findings to actionable engineering controls.
- Define measurable indicators that allow continuous security improvement over time.

=== Scope and Boundaries

This paper focuses on application-layer AI security for LLM-enabled systems, including RAG pipelines and agentic tool-calling workflows. The scope includes adversarial prompting, retrieval poisoning, tool abuse, data leakage, and denial-of-wallet scenarios.

Out of scope are hardware-level attacks, model pre-training infrastructure compromise, and nation-state scale cyber operations. The paper emphasizes practical controls suitable for enterprise deployment rather than purely theoretical guarantees.

== Methodological Positioning

This study follows a design-oriented security engineering approach: (1) threat modeling, (2) adversarial evaluation, (3) control design, and (4) operational measurement. The logic is aligned with risk assessment practices from NIST @nist_sp800_30_2012, secure development guidance @nist_sp800_218_2022, and control assessment principles @nist_sp800_53a_2022.

The paper additionally considers regulatory and governance constraints from NIS2 @eu_nis2_2022, DORA @eu_dora_2022, GDPR @noauthor_regulation_nodate, and the EU AI Act @eu_ai_act_2024 to ensure that the resulting architecture is not only technically sound but also auditable in enterprise contexts.

== Organization of the Paper

The paper is structured as follows:

- Background Work defines the conceptual and technical baseline.
- Red Teaming presents adversarial attack taxonomy and break scenarios.
- Blue Teaming presents layered defensive controls and operational safeguards.
- Final Solution/Architecture and Design integrates both perspectives into one lifecycle model.
- Contributions summarizes the achieved outcomes.
- Open Research Questions identifies unresolved technical and scientific challenges.
- Conclusion consolidates findings and implications for future work.
