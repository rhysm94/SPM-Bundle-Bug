// swift-tools-version:5.4

import PackageDescription

let package = Package(
	name: "SPM-Bundle-Bug",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v14),
		.macOS(.v11),
	],
	products: [
		.library(name: "FooFeature", targets: ["FooFeature"]),
	],
	targets: [
		.target(name: "Bar"),
		.target(name: "FooFeature", dependencies: ["Bar"]),
	]
)
