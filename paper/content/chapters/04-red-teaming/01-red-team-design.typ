#import "@preview/supercharged-dhbw:3.4.0": acr

== Red-Team Design

This section argues that effective #acr("LLM") red teaming must be modeled as a campaign against a *system* rather than against a base model endpoint in isolation. The research design therefore targets the full application attack surface: user interface, prompt assembly, retrieval pipeline, tool orchestration, logging, and operator workflows. This system view is consistent with modern threat-modeling practice and allows explicit mapping between attacker goals, reachable assets, and defensive control points @shostack_threat_2014 @shevchenko_datacentric_2016.

The attacker model assumes adaptive adversaries with low to moderate technical sophistication at the prompt layer and, in selected scenarios, higher sophistication at the tool and context-manipulation layers. The objective is not only immediate policy violation, but also long-horizon degradation: steering, confusion, policy boundary discovery, and eventual privilege abuse through repeated interaction. This is why the chapter emphasizes multi-turn progression and not only single-turn jailbreak payloads @perez2022red @ganguli2022redteaming.

Risk prioritization follows a likelihood-impact logic aligned with NIST risk guidance: scenarios are ranked by exploit feasibility, business impact, detectability, and repeatability under minor paraphrase variation @nist_sp800_30_2012. In practice, this means that a moderately severe exploit with high reproducibility may be prioritized above a catastrophic but brittle exploit that depends on narrow formatting artifacts.

Methodologically, the red-team design introduces three evidence classes used later in the thesis:

- *Exploit evidence*: reproducible transcripts showing attack progression.
- *Operational evidence*: telemetry proving where detection did or did not trigger.
- *Remediation evidence*: post-fix regression results showing reduced exploitability.

This framing keeps offensive findings actionable for blue-team engineering and directly feeds the TSLL lifecycle defined in Chapter 6.
