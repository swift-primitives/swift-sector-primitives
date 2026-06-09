// Sector.Quadrant.swift
// The four quadrants of the plane.

extension Sector {
    /// The four quadrants of the plane, over the `Orthant<2>` and `Cyclic.Group.Static<4>`
    /// carriers, in standard mathematical numbering (counter-clockwise from the `(+x, +y)`
    /// quadrant).
    ///
    /// A plane quadrant — deliberately distinct from `Boundary.Corner`, which shares the
    /// `Orthant<2>` carrier but means a box vertex. The lossless `.orthant` / `.cyclic`
    /// projections live in `swift-sector-orthant-primitives` / `swift-sector-cyclic-primitives`.
    public enum Quadrant: Sendable, CaseIterable {
        /// Quadrant I: `(+x, +y)`.
        case I
        /// Quadrant II: `(−x, +y)`.
        case II
        /// Quadrant III: `(−x, −y)`.
        case III
        /// Quadrant IV: `(+x, −y)`.
        case IV
    }
}

// MARK: - Semantics

extension Sector.Quadrant {
    /// The diagonally-opposite quadrant (I ↔ III, II ↔ IV).
    @inlinable
    public var opposite: Sector.Quadrant {
        switch self {
        case .I: .III
        case .III: .I
        case .II: .IV
        case .IV: .II
        }
    }
}

// MARK: - Equality, Hashing, Ordering

extension Sector.Quadrant {
    @usableFromInline
    var _rank: Int {
        switch self {
        case .I: 0
        case .II: 1
        case .III: 2
        case .IV: 3
        }
    }

    @inlinable public static func == (lhs: Sector.Quadrant, rhs: Sector.Quadrant) -> Bool { lhs._rank == rhs._rank }
    @inlinable public static func < (lhs: Sector.Quadrant, rhs: Sector.Quadrant) -> Bool { lhs._rank < rhs._rank }
    @inlinable public static func <= (lhs: Sector.Quadrant, rhs: Sector.Quadrant) -> Bool { lhs._rank <= rhs._rank }
    @inlinable public static func > (lhs: Sector.Quadrant, rhs: Sector.Quadrant) -> Bool { lhs._rank > rhs._rank }
    @inlinable public static func >= (lhs: Sector.Quadrant, rhs: Sector.Quadrant) -> Bool { lhs._rank >= rhs._rank }
    @inlinable public func hash(into hasher: inout Hasher) { hasher.combine(_rank) }
}

// MARK: - Codable

#if !hasFeature(Embedded)
    extension Sector.Quadrant: Codable {}
#endif
