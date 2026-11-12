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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.9/HyperPlaid.zip",
            checksum: "af340a44b9144124321cb7b361323a1816ae2e9e52e1c6344259536eb34177f6"
        ),
        .target(
            name: "HyperPlaidDependencies",
            dependencies: [
                .product(name: "LinkKit", package: "LinkKit")
            ]
        )
    ]
)
