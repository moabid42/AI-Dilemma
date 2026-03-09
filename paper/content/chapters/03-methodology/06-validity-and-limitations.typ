== Validity and Limitations

The methodological argument of this section is that AI-security evaluation must explicitly report uncertainty because adaptive attackers and changing model behavior invalidate naive generalization.

Three validity threats are central:

- Coverage bias: finite scenario sets cannot represent full real-world adversarial diversity.
- Environment bias: controlled test conditions differ from production traffic, user behavior, and operational constraints.
- Measurement bias: observed improvements may reflect detector retuning or policy strictness rather than genuine resilience gains.

Mitigations include versioned scenario corpora, repeated regression runs, and explicit separation between exploratory findings and confirmatory claims. In addition, residual-risk statements are retained even after successful control runs to acknowledge transfer and adaptation risks documented in contemporary jailbreak research @zou2023universal @wei2023jailbroken.

The implication for interpretation is conservative reporting: this thesis claims risk reduction under defined assumptions, not universal robustness guarantees.
