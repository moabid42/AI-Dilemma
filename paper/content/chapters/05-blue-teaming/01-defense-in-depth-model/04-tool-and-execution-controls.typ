=== Tool and Execution Controls

Tool invocation is a high-impact risk channel because language-level compromise can become real-world action if execution boundaries are weak. Blue-team design must therefore enforce strict capability containment.

Required controls include allowlisted tools, schema-validated arguments, least-privilege identities, contextual authorization, and sandboxed execution for high-risk functions. In addition, policy decisions and tool traces should be linked for post-incident forensics.

From a threat perspective, these controls break common exploitation chains where prompt manipulation is used to escalate into unauthorized function calls or data exfiltration through tool outputs @owaspTop10LLM2025 @mitreAtlas.
