// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BugSplat-iOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Bugsplat",
            targets: ["Bugsplat"]),
    ],
    targets: [
        .binaryTarget(
            name: "Bugsplat",
            url: "https://github.com/BugSplat-Git/BugSplat-iOS/releases/download/1.0.1/Bugsplat.xcframework.zip",
            checksum: "7ee6bbe285b0594d198df9827a6219c19cbb8bd991baf2a317b4cf4b05919925"),
    ]
)
