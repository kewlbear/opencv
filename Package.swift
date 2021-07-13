// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "opencv",
    products: [
        .library(
            name: "opencv",
            targets: ["opencv2", "opencv"]),
    ],
    targets: [
        .binaryTarget(name: "opencv2", url: "https://github.com/kewlbear/opencv/releases/download/0.0.1/opencv2.xcframework.zip", checksum: "2d2a52e4e5512ff6c4265c82819ad2b460e0d5774974fd87f02fbe8d238535c0"),
        .target(
            name: "opencv",
            dependencies: []),
        .testTarget(
            name: "opencvTests",
            dependencies: ["opencv"]),
    ]
)
