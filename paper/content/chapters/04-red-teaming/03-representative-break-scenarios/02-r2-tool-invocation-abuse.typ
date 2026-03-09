=== R2: Tool Invocation Abuse

An attacker induces the model to call internal tools with unsafe or unauthorized arguments. If tool authorization is delegated implicitly to model output, natural-language manipulation becomes an execution-layer compromise.

Attack path:

1. Prompt shapes the assistant into a high-trust persona ("I am the security admin executing a recovery step").
2. Model emits a plausible but unauthorized tool request.
3. Wrapper accepts the request due to weak parameter validation or missing policy checks.

This scenario demonstrates a core thesis claim: in agentic architectures, prompt security and application security are inseparable. A robust design requires schema validation, least-privilege permissions, and out-of-band authorization gates before tool execution @ruan2023identifying @nist_sp800_53_2020.
