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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.7/HyperPlaid.zip",
            checksum: "b661f29f05a509a3b04f0f5617e59e5e1a6463e33ce920495993795c771e0469"
        ),
        .target(
            name: "HyperPlaidDependencies",
            dependencies: [
                .product(name: "LinkKit", package: "LinkKit")
            ]
        )
    ]
)
