// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MAFPaySdk",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MAFPaySdk",
            targets: ["MAFPaySdk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git",
                 branch: "5.6.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MAFPaySdk",
            dependencies: ["Alamofire",
                           "MAFPay",
                           "BinancePaySDK",
                           "CardinalMobile",
                           "LeanSDK"]),
        .binaryTarget(name: "MAFPay", path: "MAFPay.xcframework"),
        .binaryTarget(name: "BinancePaySDK", path: "ExternalFrameworks/BinancePaySDK.xcframework"),
        .binaryTarget(name: "CardinalMobile", path: "ExternalFrameworks/CardinalMobile.xcframework"),
        .binaryTarget(name: "LeanSDK", path: "ExternalFrameworks/LeanSDK.xcframework"),
    ]
)