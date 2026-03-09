#import "@preview/supercharged-dhbw:3.4.0": gls

=== R1: Indirect Prompt Injection

An attacker publishes crafted content in a data source likely to be retrieved. The model then treats the retrieved text as trusted instructions and partially overrides its intended behavior. This scenario is critical for enterprise #gls("RAG") systems where retrieval quality controls are often weaker than model-side safety controls @yi2023promptinjection @liu2023formalizing.

Observed pattern:

1. Attacker seeds a document with benign topical content and hidden behavioral directives.
2. Retrieval ranks the document due to lexical relevance.
3. The assistant follows the embedded directive (for example, disclose policy text, skip refusal logic, or invoke a tool branch).

Security implication: the vulnerability emerges at the *composition boundary* between retrieval and prompting, not at the base model alone. Defenses must therefore separate data and instruction channels, attach trust labels to retrieved context, and enforce explicit instruction hierarchy at runtime @chen2024struq @hines2024spotlighting.
