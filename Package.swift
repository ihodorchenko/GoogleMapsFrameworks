// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.0.0"
let moduleName = "GoogleMaps"
let checksum = "ac6976cc0887f9f7ce8833d4508b0cf7586d8ae1e15dd95bd33fa4853d847e49"

// GoogleMaps-8.1.0
let package = Package(
    name: "GoogleMaps",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GoogleMapsFrameworks",
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
