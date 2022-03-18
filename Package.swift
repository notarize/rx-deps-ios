// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxDeps",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "RxDeps",
                 type: .dynamic,
                 targets: ["RxDeps"]),
        .library(name: "RxTestDeps",
                 type: .dynamic,
                 targets: ["RxTestDeps"])
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "RxDeps",
                dependencies: ["RxSwift", "RxRelay", "RxCocoa"]),
        .target(name: "RxTestDeps",
                dependencies: ["RxTest", "RxBlocking"]),
        .binaryTarget(name: "RxSwift",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift_13.2.1_6.5.0.xcframework.zip",
                      checksum: "ab7d19f9d55317a0951b92f32e2bdc4320800a6276fa32f4aa2d6756bb24880b"),
        .binaryTarget(name: "RxRelay",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxRelay_13.2.1_6.5.0.xcframework.zip",
                      checksum: "f5a4ef64b1fa5e90a86c32b03177280524a6c284ad83801eec849a2973a145cf"),
        .binaryTarget(name: "RxCocoa",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxCocoa_13.2.1_6.5.0.xcframework.zip",
                      checksum: "5505de00f29261f38823610c5787c9eba5ec34bef8cd74a9b7754b7bd396d7f1"),
        .binaryTarget(name: "RxTest",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxTest_13.2.1_6.5.0.xcframework.zip",
                      checksum: "d25b18ce8007ba0574c0de464226fae972b8b9611c2fe34354031fcc9e95fbbd"),
        .binaryTarget(name: "RxBlocking",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxBlocking_13.2.1_6.5.0.xcframework.zip",
                      checksum: "bff2ee46b11665a54405f4c892a62c37eb1750e60bae16637c4471abe3b5a18e")
    ]
)
