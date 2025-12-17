// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Battleship",
    platforms: [
        .macOS(.v15)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0"),

        .package(url: "https://github.com/Quick/Nimble.git", from: "14.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "7.6.2"),
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.58.2"),
    ],
    targets: [
        .executableTarget(
            name: "Battleship",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ]
        ),

        .testTarget(
            name: "BattleshipTests",
            dependencies: [
                "Battleship",

                "Quick",
                "Nimble"
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
