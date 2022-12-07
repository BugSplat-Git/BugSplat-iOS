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
            checksum: "ba8133c8620ee2b77f53d839e474285b0d99234c079dd53de8a2e376e08c8882"),
    ]
)
