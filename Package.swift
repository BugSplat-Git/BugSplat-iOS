// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BugSplat-iOS",
    products: [
        .library(
            name: "Bugsplat",
            targets: ["Bugsplat"]),
    ],
    targets: [
        .binaryTarget(
            name: "Bugsplat",
            url: "https://github.com/BugSplat-Git/BugSplat-iOS/releases/download/1.0/Bugsplat.xcframework.zip",
            checksum: "0cb8a1c43a1058a142fa15a0e6425e817175121cbdfa8eb4a7d7dca8b3a0fdd1"),
    ]
)
