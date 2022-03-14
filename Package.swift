// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxDeps",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "RxSwift",
                 targets: ["RxSwift", "RxRelay", "RxCocoa"]),
        .library(name: "RxTest",
                 targets: ["RxTest", "RxBlocking"])
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "RxSwift",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift.xcframework.13.1_6.5.0.zip",
                      checksum: "9fc340abd911766967c5f4b699da0751f7c14ed0cba66ea609d87c631a349bfa"),
        .binaryTarget(name: "RxRelay",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxRelay.xcframework.13.1_6.5.0.zip",
                      checksum: "ee50e22a037279ce02a7fc307c32a62af055f4461e9bda6a1f9d5cd9b033d594"),
        .binaryTarget(name: "RxCocoa",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxCocoa.xcframework.13.1_6.5.0.zip",
                      checksum: "572c64f7dd0207dcd3cd19e62ee44fb3f8282df52c8a2520e1fb4c4f2c5d529a"),
        .binaryTarget(name: "RxTest",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxTest.xcframework.13.1_6.5.0.zip",
                      checksum: "07d500227fd6a97832c06ebf6dcc6ac73675a86701747ba38903aec44672d5ea"),
        .binaryTarget(name: "RxBlocking",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxBlocking.xcframework.13.1_6.5.0.zip",
                      checksum: "da2c5afbb489b92cd742b31df35106cf27f4b09917a101232c322862897b2b40")
    ]
)
