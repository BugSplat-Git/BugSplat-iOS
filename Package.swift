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
            checksum: "18995def7335183c3676a032a46af4435cf06b1a380e32402a97d511dac06662"),
    ]
)
