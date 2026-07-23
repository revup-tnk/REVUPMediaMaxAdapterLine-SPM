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
        .package(url: "https://github.com/ly-ads-network/swift-package-manager-fivead.git", exact: "3.0.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterLineTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterLine"),
                .target(name: "AppLovinMediationLineAdapter"),
                .product(name: "FiveAd", package: "swift-package-manager-fivead"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterLine",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterLine.zip",
            checksum: "547e555ab177d98e3fa6ebb46859ab28ab776237e52be0c766e44848dcd49632"
        ),
        .binaryTarget(
            name: "AppLovinMediationLineAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/line-adapter/AppLovinMediationLineAdapter-3.0.1.0.zip",
            checksum: "b99a00e52778bd73ad483f6e9a36ab013c82582a6ec190aec03b39883a33fe00"
        )
    ]
)
