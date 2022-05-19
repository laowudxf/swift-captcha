// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-captcha",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Captcha",
            targets: ["Captcha"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/laowudxf/SwiftGD.git", from: "2.5.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Captcha",
            dependencies: [
                .product(name: "SwiftGD", package: "SwiftGD")
            ],
            resources: [.process("MarkerFelt.ttc")]
        ),
        .testTarget(
            name: "swift-captchaTests",
            dependencies: ["Captcha"]),
    ]
)
