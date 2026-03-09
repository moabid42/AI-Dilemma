#import "@preview/supercharged-dhbw:3.4.0": acr

== Measurement and Analysis

The primary analytical objective is to quantify whether defensive controls reduce exploitability while preserving operational utility. Metrics are therefore grouped into attack, detection, and response dimensions.

Core indicators:

- Attack Success Rate (#acr("ASR")) by scenario class.
- Mean Time to Detect (#acr("MTTD")).
- Mean Time to Respond (#acr("MTTR")).
- Unsafe tool-call execution rate.
- Sensitive-output leakage rate.

To avoid metric gaming, no single indicator is used in isolation. For example, lower #acr("ASR") can coincide with unacceptable false positives or degraded usability; similarly, improved #acr("MTTD") may come from noisy alerting that increases analyst load. For this reason, metrics are interpreted as profiles rather than scalar scores.

Where benchmark comparability is required, this thesis uses attack sets and reporting principles compatible with open jailbreak robustness benchmarks, especially for cross-model and cross-defense comparisons @chao2024jailbreakbench.
