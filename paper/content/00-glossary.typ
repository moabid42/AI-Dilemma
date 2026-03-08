#let glossary = (
  Red-Teaming: "A structured adversarial assessment process that simulates realistic attacker behavior to discover security weaknesses in AI systems.",

  Blue-Teaming: "The engineering and operational practice of preventing, detecting, and responding to attacks against AI systems.",

  Prompt-Injection: "An attack where malicious instructions are embedded in user input or external content to override intended model behavior.",

  Jailbreak: "A technique used to bypass model safety controls and force outputs that violate policy constraints.",

  RAG: "A design pattern where an LLM retrieves external documents at runtime and uses them as context for generation.",

  RAG-Poisoning: "Manipulation of retrieval corpora so that malicious or misleading documents influence model output and actions.",

  System-Prompt: "Hidden high-priority instructions that define model behavior, policy constraints, and task framing.",

  Tool-Calling: "A mechanism where the model selects and invokes external tools or functions based on natural-language intent.",

  Function-Calling: "A constrained interface for model-to-tool interaction using predefined schemas and typed parameters.",

  Guardrail: "A technical or procedural control that limits unsafe model behavior or blocks high-risk actions.",

  Instruction-Hierarchy: "A priority order for instructions, typically system over developer over user, to prevent policy override by untrusted input.",

  Hallucination: "Model output that appears plausible but is unsupported, incorrect, or fabricated.",

  Model-Inversion: "An attack attempting to infer sensitive training-related information from model outputs.",

  Data-Exfiltration: "Unauthorized extraction of sensitive information from prompts, memory, retrieval stores, logs, or downstream tools.",

  Denial-of-Wallet: "An economic abuse attack that drives excessive model or tool consumption to increase operational cost.",

  Policy-as-Code: "Machine-readable security policy definitions enforced automatically in software pipelines and runtime controls.",

  Kill-Switch: "A controlled emergency mechanism that disables specific model capabilities, tools, or endpoints during incidents.",

  Blast-Radius: "The maximum scope of damage that can occur when one component or control fails.",

  Residual-Risk: "The remaining risk after security controls are implemented and validated.",

  Adversarial-Evaluation: "A repeatable test process using attack-like inputs to measure security and robustness of model behavior.",
)
