# swift-sector-primitives

Sign-orthant sectors of space for the Swift Institute primitives layer.

`Sector.Quadrant` is the four quadrants of the plane (standard math numbering, over
`Orthant<2>` and `Cyclic.Group.Static<4>`); `Sector.Octant` is the eight octants of 3-space
(by sign triple, over `Orthant<3>`). A plane quadrant is a region of space, distinct from
`Boundary.Corner` (a box vertex) over the same `Orthant<2>` carrier.

```swift
import Sector_Primitives

Sector.Quadrant.I.opposite     // .III
Sector.Octant.ppp.opposite     // .nnn
Sector.Octant.allCases.count   // 8
```

The lossless carrier projections (`.orthant`, `Quadrant.cyclic`) live in the per-carrier
bridge packages `swift-sector-orthant-primitives` and `swift-sector-cyclic-primitives`.

## License

Apache License 2.0. See [LICENSE](LICENSE.md).
