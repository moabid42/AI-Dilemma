=== Model and Output Controls

Model-layer controls aim to reduce harmful generation probability and to enforce policy compliance before responses reach end users or downstream tools. This layer combines alignment-time and runtime mechanisms.

At alignment time, harmlessness-focused training strategies provide a baseline for reducing unsafe response tendencies @bai2022constitutional. At runtime, dedicated safeguard models and output policy classifiers can add an independent verification barrier prior to response release @inan2023llamaguard.

The implication is architectural separation of duties: generation and policy adjudication should not be fully co-located in one component, because independent checks improve resilience against single-point control failure.
