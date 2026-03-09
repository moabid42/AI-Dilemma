== Threat Modeling and Scenario Construction

The methodological claim in this subsection is that scenario quality determines evaluation quality: if threat assumptions are weak, security metrics will be misleading. Scenario construction therefore starts from trust boundaries, asset criticality, and attacker capability assumptions, following STRIDE-inspired and data-centric threat-modeling principles @shostack_threat_2014 @shevchenko_datacentric_2016.

Each scenario specification includes:

- Target component and trust boundary.
- Attacker preconditions and capabilities.
- Attack steps and expected unsafe behavior.
- Potential business and security impact.
- Detection signals and candidate mitigations.

To improve consistency across chapters, attack scenarios are additionally tagged with tactic-level categories from adversarial AI knowledge bases, which helps map narrative attack descriptions to comparable operational behaviors @mitreAtlas.

The implication is that scenario libraries become reusable across lifecycle phases: red-team execution uses them for exploit discovery, while blue-team validation reuses the same scenarios as regression tests after control deployment.
