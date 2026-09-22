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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.4/HyperPlaid.zip",
            checksum: "4bcf89c43fc85f9f90b81d1af94e753da5a8ec0b1232a5d162ce317766c80671"
        ),
        .target(
            name: "HyperPlaidDependencies",
            dependencies: [
                .product(name: "LinkKit", package: "LinkKit")
            ]
        )
    ]
)
