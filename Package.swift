// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "HyperPlaid",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "HyperPlaid",
            targets: ["HyperPlaid", "HyperPlaidDependencies"]
        )
    ],
    dependencies: [
        .package(name: "LinkKit", url: "https://github.com/plaid/plaid-link-ios-spm.git", .exact("7.1.0"))
    ],
    targets: [
        .binaryTarget(
            name: "HyperPlaid",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.5/HyperPlaid.zip",
            checksum: "1a049b5ff6b40233e5ff1c329da9f2317ff0678bb054ce6faab808494c4559b8"
        ),
        .target(
            name: "HyperPlaidDependencies",
            dependencies: [
                .product(name: "LinkKit", package: "LinkKit")
            ]
        )
    ]
)
