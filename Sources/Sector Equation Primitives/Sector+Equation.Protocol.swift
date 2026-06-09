// Sector+Equation.Protocol.swift
// Conformance of Sector.Quadrant / Sector.Octant to Equation.Protocol — unconditional.
// Payload-less enums; the `==` witnesses live in the root (no gated stdlib shim needed).

public import Equation_Primitives
public import Sector_Primitive

extension Sector.Quadrant: Equation.`Protocol` {}
extension Sector.Octant: Equation.`Protocol` {}
