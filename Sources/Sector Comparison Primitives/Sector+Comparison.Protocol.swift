// Sector+Comparison.Protocol.swift
// Conformance of Sector.Quadrant / Sector.Octant to Comparison.Protocol — unconditional.
// The comparison witnesses live in the root. `Comparison.Protocol` aliases
// `Swift.Comparable`, so these declarations supply both conformances.

public import Comparison_Primitives
public import Sector_Primitive

extension Sector.Quadrant: Comparison.`Protocol` {}
extension Sector.Octant: Comparison.`Protocol` {}
