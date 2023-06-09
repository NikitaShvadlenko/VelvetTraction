// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MainScreen",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MainScreen",
            targets: ["MainScreen"])
    ],
    dependencies: [
        .package(path: "../Utils"),
        .package(path: "../SharedResources"),
        .package(path: "../Providers"),
        .package(path: "../SharedModels")
    ],

    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MainScreen",
            dependencies: [
            "Utils",
            "SharedResources",
            "Providers",
            "SharedModels"
            ])
    ]
)
