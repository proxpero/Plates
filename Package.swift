// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Plates",
    products: [
        .executable(
            name: "plates",
            targets: ["Plates"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "0.4.4"
        ),
        .package(
            url: "https://github.com/JohnSundell/ShellOut.git",
            from: "2.0.0"
        )
    ],
    targets: [
        .executableTarget(
            name: "Plates",
            dependencies: [
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                ),
                "ShellOut"
            ]),
        .testTarget(
            name: "PlatesTests",
            dependencies: ["Plates"]),
    ]
)
