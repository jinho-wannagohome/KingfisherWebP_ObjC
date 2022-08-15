// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KingfisherWebP_ObjC",
    products: [
        .library(
            name: "KingfisherWebP_ObjC",
            targets: ["KingfisherWebP_ObjC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "KingfisherWebP_ObjC",
            dependencies: [
                .product(name: "libwebp", package: "libwebp-Xcode")
            ],
            path: "Sources",
        publicHeadersPath: "include/KingfisherWebP_ObjC"),
    ]
)
