// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "AxisDTOs",
	platforms: [
		.iOS  (.v15),
		.macOS(.v13),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name:     "AxisDTOs",
			targets: ["AxisDTOs"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-collections", from: "1.0.0"),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "AxisDTOs",
			dependencies: [
				.product(name: "Collections", package: "swift-collections"),
			],
			swiftSettings: [
				.enableExperimentalFeature("StrictConcurrency"),
				.swiftLanguageMode(.v6),
			]
		),
	]
)
