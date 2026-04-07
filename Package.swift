// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterLine",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterLine",
            targets: ["REVUPMediaMaxAdapterLineTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterLineTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterLine"),
                .target(name: "REVUPMediaMaxAdapterLineMediationAdapter"),
                .target(name: "FiveAd"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterLine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterLine.zip",
            checksum: "8b2af60d627e581c577cf96b6000ca4c168f607bd265e464f7c45fa9c6dbfe56"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterLineMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationLineAdapter.xcframework.zip",
            checksum: "dd09fe917909e3d17fc342c74cabb3e43b6c63c1ca3566aaf6fd633402c0541a"
        ),
        .binaryTarget(
            name: "FiveAd",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/FiveAd.xcframework.zip",
            checksum: "cc764c6545423f3502c6256fbe099ff7fd2839e1accebd0da6a4e1cf66a2752b"
        ),
    ]
)
