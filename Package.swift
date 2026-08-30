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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.2/HyperPlaid.zip",
            checksum: "b7152cf7f51255e024c7c1fc1073075bf07b4ead480db2d727d116a33a642536"
        ),
        .target(
            name: "HyperPlaidDependencies",
            dependencies: [
                .product(name: "LinkKit", package: "LinkKit")
            ]
        )
    ]
)
