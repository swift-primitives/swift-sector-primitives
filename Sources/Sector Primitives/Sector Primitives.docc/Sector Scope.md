# Sector Scope

The identity surface of `swift-sector-primitives` and what it deliberately excludes.

## Identity

`swift-sector-primitives` provides the **sign-orthant sectors of space** — `Sector.Quadrant`
(the four plane quadrants, standard math numbering, over the `Orthant<2>` /
`Cyclic.Group.Static<4>` carriers) and `Sector.Octant` (the eight octants of 3-space, by sign
triple, over `Orthant<3>`). Each is a thin nominal type with its own identity and canonical
case order.

## Core targets

- `Sector Primitive` — the `Sector` namespace + the `Quadrant` and `Octant` enums, their
  `opposite` semantics, stdlib `CaseIterable`, and conditional `Codable`. Zero external
  dependencies ([MOD-017]).
- `Sector Equation / Hash / Comparison Primitives` — the institute Equatable/Hashable/
  Comparable twins.

## Out of scope

- The `Orthant<2>` / `Orthant<3>` / `Cyclic.Group.Static<4>` carriers and the `.orthant` /
  `.cyclic` projections: the `swift-sector-orthant-primitives` /
  `swift-sector-cyclic-primitives` bridges.
- The box-vertex view over the same `Orthant<2>` carrier (`Boundary.Corner`):
  `swift-boundary-primitives`.
- `Sector.Sextant` (Z₆) and the 12-position dial: deferred (use `Cyclic.Group.Static<6>` /
  `Cyclic.Group.Static<12>` directly).

## Evaluation rule

Sub-target additions are evaluated against this scope. If a proposed addition is OUT of
scope, it extracts to a sibling package, not into this one.
