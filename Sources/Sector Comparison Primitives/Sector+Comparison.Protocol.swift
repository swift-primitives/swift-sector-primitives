// Sector+Comparison.Protocol.swift
// Conformance of Sector.Quadrant / Sector.Octant to Comparison.Protocol — unconditional.
// The `<` / `<=` / `>` / `>=` witnesses live in the root; enums need the gated stdlib shim.

public import Comparison_Primitives
public import Sector_Primitive

extension Sector.Quadrant: Comparison.`Protocol` {}
extension Sector.Octant: Comparison.`Protocol` {}

#if swift(<6.4)
    extension Sector.Quadrant: Comparable {}
    extension Sector.Octant: Comparable {}
#endif
