// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "TCACoordinators",
  platforms: [
    .iOS(.v14), .watchOS(.v7), .macOS(.v11), .tvOS(.v14),
  ],
  products: [
    .library(
      name: "TCACoordinators",
      targets: ["TCACoordinators"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/johnpatrickmorgan/FlowStacks", "0.3.6" ..< "0.6.0"),
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.8.0"),
  ],
  targets: [
    .target(
      name: "TCACoordinators",
      dependencies: [
        .product(name: "FlowStacks", package: "FlowStacks"),
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
      ]
    ),
    .testTarget(
      name: "TCACoordinatorsTests",
      dependencies: ["TCACoordinators"]
    ),
  ]
)
