// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package:Package = .init(
    name: "swift-mongodb-test",
    platforms: [
        .macOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(name: "_MongoDB", targets: ["_MongoDB"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tayloraswift/swift-mongodb", .upToNextMinor(from: "0.24.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(name: "_MongoDB",
            dependencies: [
                .product(name: "MongoDB", package: "swift-mongodb"),
            ]),
    ]
)
