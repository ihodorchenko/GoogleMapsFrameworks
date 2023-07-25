// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let moduleName = "GoogleMaps"
let checksum = "70950e6ec6523dc496bb96ebdf0a7ebb20fdacfe0c3f8a9496c677a626237880"

let package = Package(
    name: "GoogleMaps",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GoogleMaps",
            targets: ["GoogleMaps", "GoogleMapsLibs"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "GoogleMaps",
            dependencies: []
        ),
        // shasum -a 256 GoogleMaps.zip | sed 's/ .*//'
        .binaryTarget(
            name: "GoogleMapsLibs",
            url: "https://github.com/ihodorchenko/GoogleMapsFrameworks/releases/download/release/\(version)/\(moduleName).zip",
            checksum: checksum
        )
    ]
)
