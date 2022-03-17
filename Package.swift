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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift.13.3_6.5.0.xcframework.zip",
                      checksum: "ef375e0471ea650f719db37da50a98dab84112c687c442c9b4a515c4cc6d9ce1"),
        .binaryTarget(name: "RxRelay",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxRelay.13.3_6.5.0.xcframework.zip",
                      checksum: "b60b1b8dd355e9effd6aa928665320f6a9c6e79b246b865d35f9dfe78bb52dc4"),
        .binaryTarget(name: "RxCocoa",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxCocoa.13.3_6.5.0.xcframework.zip",
                      checksum: "3aef3dfdd8f4d285178e951058953d18a7851be96ee5be2b3030f4d74a5fc481"),
        .binaryTarget(name: "RxTest",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxTest.13.3_6.5.0.xcframework.zip",
                      checksum: "947c152bf54dc98f674f10a2742d6aca483fa0492de3b50fe61957c4c2db3781"),
        .binaryTarget(name: "RxBlocking",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxBlocking.13.3_6.5.0.xcframework.zip",
                      checksum: "44437a3ca200f01d4b3fefa0b7f8f7fdc5091f10f7bdf5f87d3f4fc8687b14a7")
    ]
)
