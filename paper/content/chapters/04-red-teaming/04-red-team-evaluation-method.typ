#import "@preview/supercharged-dhbw:3.4.0": acr

== Red-Team Evaluation Method

This section proposes a reproducible adversarial-evaluation protocol with four phases:

1. *Hypothesis definition*: specify attacker objective, target component, and expected failure mode.
2. *Controlled execution*: run the scenario under fixed temperature, model version, and policy configuration.
3. *Evidence capture*: store full traces (prompt chain, model outputs, tool calls, telemetry events).
4. *Regression conversion*: convert successful exploits into recurring tests for future releases.

Primary metrics:

- #acr("ASR"): attack success rate per scenario family.
- `Turns-to-compromise`: number of turns until first unsafe output or unsafe action.
- `Detection latency`: elapsed time from first malicious indicator to defensive trigger.
- `Reproducibility score`: success stability across paraphrase variants.
- `Impact score`: confidentiality, integrity, availability, and business-process impact.

The protocol is aligned with standardized red-team benchmarking principles in JailbreakBench and HarmBench, while keeping enterprise deployment constraints in scope @chao2024jailbreakbench @mazeika2024harmbench.

To reduce evaluation bias, this thesis separates three environments: laboratory (maximal observability), staging (production-like policies), and monitored pilot (limited real workflow exposure). This separation allows clear statements about external validity and prevents overclaiming from purely synthetic tests.

End-of-chapter synthesis: the red-team output is not only a vulnerability list; it is a calibrated *vulnerability-to-control evidence map* that drives engineering priorities in the Blue Teaming and Final Solution chapters. This closes the offense-to-defense loop expected in secure #acr("SDLC") practice @nist_sp800_218_2022.
