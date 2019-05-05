// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "utils",
	products: [
		.library(name: "utils", targets: ["utils"])
	],
    targets: [
        .target(name: "utils", path: "./sources/swift"),
    ],
    swiftLanguageVersions: [.v4_2]
)
