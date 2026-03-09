== Benchmarking and Experimental Design

The thesis sentence of this subsection is that evaluation credibility depends on transparent benchmark design choices. To avoid ad-hoc reporting, scenarios are grouped by attack mechanism (prompt, retrieval, tool, and multi-turn steering), and each group is tested under a fixed execution protocol before and after control changes.

Benchmark design follows three principles:

- Relevance: scenarios must map to realistic enterprise attack paths and threat objectives.
- Reproducibility: prompt templates, context artifacts, and success criteria are version-controlled.
- Comparability: metric definitions remain stable across model and control variants.

For jailbreak-oriented testing, the study adopts reporting practices aligned with open robustness benchmarks and explicitly records attack-transfer observations across model families @chao2024jailbreakbench @zou2023universal.

The practical implication is that benchmark output can be reused directly in Chapter 7 (Contributions) and in future case-study replication without redesigning the measurement framework.
