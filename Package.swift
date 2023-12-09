// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "test-protbuf",
    products: [
        .executable(
            name: "test-protbuf",
            targets: ["test-protbuf"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        .executableTarget(
            name: "test-protbuf",
            dependencies: [.product(name: "SwiftProtobuf", package: "swift-protobuf")]
        ),
        .testTarget(
            name: "test-protbufTests",
            dependencies: ["test-protbuf"]),
    ]
)
