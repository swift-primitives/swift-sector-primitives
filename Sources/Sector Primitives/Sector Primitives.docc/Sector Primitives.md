# ``Sector_Primitives``

@Metadata {
    @DisplayName("Sector Primitives")
    @TitleHeading("Swift Institute — Primitives Layer")
}

Sign-orthant sectors of space — `Sector.Quadrant` (plane) and `Sector.Octant` (3-space).

## Overview

`Sector Primitives` ships ``Sector_Primitive/Sector/Quadrant`` (the four plane quadrants, in standard math numbering, over `Orthant<2>` and `Cyclic.Group.Static<4>`) and ``Sector_Primitive/Sector/Octant`` (the eight octants of 3-space, by sign triple, over `Orthant<3>`).

A plane quadrant is a *region of space* — deliberately distinct from `Boundary.Corner`, a box vertex, even though both ride `Orthant<2>`. The lossless carrier projections live in the per-carrier bridges `swift-sector-orthant-primitives` (`.orthant`) and `swift-sector-cyclic-primitives` (`Quadrant.cyclic`).

## Topics

### Essentials

- <doc:Sector-Scope>

### Core Types

- ``Sector_Primitive/Sector/Quadrant``
- ``Sector_Primitive/Sector/Octant``
