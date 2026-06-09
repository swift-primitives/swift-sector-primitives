// Sector+Hash.Protocol.swift
// Conformance of Sector.Quadrant / Sector.Octant to Hash.Protocol — unconditional.
// Payload-less enums; the `hash(into:)` witnesses live in the root (no gated Hashable shim).

public import Hash_Primitives
public import Sector_Primitive

extension Sector.Quadrant: Hash.`Protocol` {}
extension Sector.Octant: Hash.`Protocol` {}
