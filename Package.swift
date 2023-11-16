// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "examples-of-swifty-test-assertions",
    products: [
        .library(
            name: "ExamplesOfSwiftyTestAssertions",
            targets: ["ExamplesOfSwiftyTestAssertions"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:artem-y/swifty-test-assertions.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "ExamplesOfSwiftyTestAssertions"),
        .testTarget(
            name: "ExamplesOfSwiftyTestAssertionsTests",
            dependencies: [
                "ExamplesOfSwiftyTestAssertions",
                .product(name: "SwiftyTestAssertions", package: "swifty-test-assertions"),
            ]
        ),
    ]
)