// Sector.swift
// The space-sector domain.

/// Namespace for the sign-orthant sectors of space.
///
/// `Sector` groups the named views that partition space by the sign of each coordinate:
/// ``Sector/Quadrant`` (the four quadrants of the plane, over `Orthant<2>`) and
/// ``Sector/Octant`` (the eight octants of 3-space, over `Orthant<3>`). A plane quadrant is a
/// region of space — deliberately distinct from `Boundary.Corner`, a box vertex, even though
/// both ride `Orthant<2>`.
public enum Sector {}
