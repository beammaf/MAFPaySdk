// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PaymentSDK",
    products: [
        .library(
            name: "PaymentSDK",
            targets: ["PaymentSDK", "CardinalMobile", "LeanSDK", "BinancePaySDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "PaymentSDK",
            dependencies: []),
        .binaryTarget(
            name: "BinancePaySDK",
            path: "Frameworks/ExternalFrameworks/BinancePaySDK.xcframework"
        ),
        .binaryTarget(
            name: "LeanSDK",
            path: "Frameworks/ExternalFrameworks/LeanSDK.xcframework"
        ),
        .binaryTarget(
            name: "CardinalMobile",
            path: "Frameworks/ExternalFrameworks/CardinalMobile.xcframework"
        ),
        .testTarget(
            name: "PaymentSDKTests",
            dependencies: ["PaymentSDK"]),
    ]
)
