// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.0"
let moduleName = "GoogleMapsFrameworks"

// GoogleMaps-8.1.0
let package = Package(
    name: moduleName,
    products: [
        .library(
            name: moduleName,
            targets: [moduleName, "GoogleMapsCore", "GoogleMapsBase", "GoogleMaps"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: moduleName,
            dependencies: []
        ),
        // shasum -a 256 GoogleMapsCore.zip | sed 's/ .*//'
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/ihodorchenko/GoogleMapsFrameworks/releases/download/release/\(version)/GoogleMapsCore.zip",
            checksum: "37914ed2bffa631ca0958583fb300d4e1729c95cf5bc56427b2fe66608c2bf01"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/ihodorchenko/GoogleMapsFrameworks/releases/download/release/\(version)/GoogleMapsBase.zip",
            checksum: "470ed27cd89da67fafbc53177be1f89f8498f24ff3c47c5cbe418cd10b8557d7"
        ),
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/ihodorchenko/GoogleMapsFrameworks/releases/download/release/\(version)/GoogleMaps.zip",
            checksum: "32446cadcbab0a93ea87075e55cfe67796471caf87173c91ae0638be7109c5ff"
        )
    ]
)
