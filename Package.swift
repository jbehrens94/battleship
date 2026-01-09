// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Battleship",
    platforms: [
        .macOS(.v15)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.3.0"),
        
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.58.2"),
    ],
    targets: [
        // Hexagonal architecture
        .target(name: "Domain"),
        .target(
            name: "Application",
            dependencies: [
                "Domain"
            ]
        ),
        .target(
            name: "Infrastructure",
            dependencies: [
                "Application",
                "Domain"
            ]
        ),

        // Executables
        .executableTarget(
            name: "Battleship",
            dependencies: [
                "Application",
                "Domain",
                "Infrastructure",

                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ]
        ),

        // Tests
        .testTarget(
            name: "IntegrationTests",
            dependencies: [
                "Battleship"
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ]
        ),

        .testTarget(
            name: "AcceptanceTests",
            dependencies: [
                "Battleship"
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
