== Core Design Principle

The core design principle of this thesis is *bidirectional traceability*: every discovered attack path must map to a concrete control, and every control must map to measurable evidence.

Operationally, each control record includes:

- control owner (engineering or operations),
- deployment location (prompt gateway, retrieval layer, tool broker, runtime monitor),
- validation criterion (test that proves the control works),
- runtime evidence source (log, metric, alert, or audit artifact),
- residual-risk statement if protection is partial.

This principle prevents "paper controls" that cannot be validated in production and keeps security decisions auditable across the model lifecycle @nist_sp800_53a_2022 @iso_19011_2018.
