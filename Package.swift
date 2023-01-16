// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(

    name: "MAFPaySPMM",
    products: [
        .library(
            name: "MAFPay",
            targets: ["MAFPay", "BinancePaySDK", "CardinalMobile", "LeanSDK", "Alamofire"])
    ],
    dependencies: [
           .package(url: "https://github.com/Alamofire/Alamofire.git",
                 branch: "5.6.2")
    ],
    targets: [
        .binaryTarget(name: "MAFPay", path: "MAFPay.xcframework"),
        .binaryTarget(name: "BinancePaySDK", path: "ExternalFrameworks/BinancePaySDK.xcframework"),
        .binaryTarget(name: "CardinalMobile", path: "ExternalFrameworks/CardinalMobile.xcframework"),
        .binaryTarget(name: "LeanSDK", path: "ExternalFrameworks/LeanSDK.xcframework"),
        .target(name: "Alamofire", dependencies: ["Alamofire"]),
    ]
)
