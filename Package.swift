// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Humation",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "Humation", targets: ["Humation"]),
    ],
    targets: [
        .target(
            name: "Humation",
            resources: [
                .copy("Resources/humation-1.json"),
            ]
        ),
        .testTarget(
            name: "HumationTests",
            dependencies: ["Humation"]
        ),
    ]
)
