// Sector.Octant.swift
// The eight octants of 3-space.

extension Sector {
    /// The eight octants of 3-space, over the `Orthant<3>` carrier. Each case is the sign
    /// triple `(x, y, z)` where `p` = positive and `n` = negative — so `.ppp` is `(+, +, +)`
    /// and `.nnn` is `(−, −, −)`.
    ///
    /// The `.orthant` projection (x/y/z binary-axis decomposition via `Orthant<3>`) lives in
    /// `swift-sector-orthant-primitives`.
    public enum Octant: Sendable, CaseIterable {
        /// `(+, +, +)`.
        case ppp
        /// `(+, +, −)`.
        case ppn
        /// `(+, −, +)`.
        case pnp
        /// `(+, −, −)`.
        case pnn
        /// `(−, +, +)`.
        case npp
        /// `(−, +, −)`.
        case npn
        /// `(−, −, +)`.
        case nnp
        /// `(−, −, −)`.
        case nnn
    }
}

// MARK: - Semantics

extension Sector.Octant {
    /// The antipodal octant — all three signs flipped.
    @inlinable
    public var opposite: Sector.Octant {
        switch self {
        case .ppp: .nnn
        case .ppn: .nnp
        case .pnp: .npn
        case .pnn: .npp
        case .npp: .pnn
        case .npn: .pnp
        case .nnp: .ppn
        case .nnn: .ppp
        }
    }
}

// MARK: - Equality, Hashing, Ordering

extension Sector.Octant {
    @usableFromInline
    var _rank: Int {
        switch self {
        case .ppp: 0
        case .ppn: 1
        case .pnp: 2
        case .pnn: 3
        case .npp: 4
        case .npn: 5
        case .nnp: 6
        case .nnn: 7
        }
    }

    @inlinable public static func == (lhs: Sector.Octant, rhs: Sector.Octant) -> Bool { lhs._rank == rhs._rank }
    @inlinable public static func < (lhs: Sector.Octant, rhs: Sector.Octant) -> Bool { lhs._rank < rhs._rank }
    @inlinable public static func <= (lhs: Sector.Octant, rhs: Sector.Octant) -> Bool { lhs._rank <= rhs._rank }
    @inlinable public static func > (lhs: Sector.Octant, rhs: Sector.Octant) -> Bool { lhs._rank > rhs._rank }
    @inlinable public static func >= (lhs: Sector.Octant, rhs: Sector.Octant) -> Bool { lhs._rank >= rhs._rank }
    @inlinable public func hash(into hasher: inout Hasher) { hasher.combine(_rank) }
}

// MARK: - Codable

#if !hasFeature(Embedded)
    extension Sector.Octant: Codable {}
#endif
