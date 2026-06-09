// swift-tools-version: 6.3.1
import PackageDescription

let package = Package(
    name: "swift-sector-primitives",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26),
        .visionOS(.v26),
    ],
    products: [
        .library(name: "Sector Primitive", targets: ["Sector Primitive"]),
        .library(name: "Sector Equation Primitives", targets: ["Sector Equation Primitives"]),
        .library(name: "Sector Hash Primitives", targets: ["Sector Hash Primitives"]),
        .library(name: "Sector Comparison Primitives", targets: ["Sector Comparison Primitives"]),
        .library(name: "Sector Primitives", targets: ["Sector Primitives"]),
        .library(name: "Sector Primitives Test Support", targets: ["Sector Primitives Test Support"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-primitives/swift-equation-primitives.git", branch: "main"),
        .package(url: "https://github.com/swift-primitives/swift-hash-primitives.git", branch: "main"),
        .package(url: "https://github.com/swift-primitives/swift-comparison-primitives.git", branch: "main"),
    ],
    targets: [
        .target(name: "Sector Primitive", dependencies: []),
        .target(
            name: "Sector Equation Primitives",
            dependencies: ["Sector Primitive", .product(name: "Equation Primitives", package: "swift-equation-primitives")]
        ),
        .target(
            name: "Sector Hash Primitives",
            dependencies: ["Sector Primitive", .product(name: "Hash Primitives", package: "swift-hash-primitives")]
        ),
        .target(
            name: "Sector Comparison Primitives",
            dependencies: ["Sector Primitive", .product(name: "Comparison Primitives", package: "swift-comparison-primitives")]
        ),
        .target(
            name: "Sector Primitives",
            dependencies: ["Sector Primitive", "Sector Equation Primitives", "Sector Hash Primitives", "Sector Comparison Primitives"]
        ),
        .target(
            name: "Sector Primitives Test Support",
            dependencies: ["Sector Primitives"],
            path: "Tests/Support"
        ),
        .testTarget(
            name: "Sector Primitives Tests",
            dependencies: ["Sector Primitives", "Sector Primitives Test Support"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("LifetimeDependence"),
        .enableExperimentalFeature("Lifetimes"),
        .enableExperimentalFeature("SuppressedAssociatedTypes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableUpcomingFeature("LifetimeDependence"),
    ]
    let package: [SwiftSetting] = []
    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
