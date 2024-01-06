// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "examples-of-swifty-test-assertions",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
        .watchOS(.v7),
        .tvOS(.v15),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "ExamplesOfSwiftyTestAssertions",
            targets: ["ExamplesOfSwiftyTestAssertions"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:artem-y/swifty-test-assertions.git", from: "0.1.1"),
    ],
    targets: [
        .target(
            name: "ExamplesOfSwiftyTestAssertions"),
        .testTarget(
            name: "ExampleTests",
            dependencies: [
                "ExamplesOfSwiftyTestAssertions",
                .product(name: "SwiftyTestAssertions", package: "swifty-test-assertions"),
            ]
        ),
    ]
)
