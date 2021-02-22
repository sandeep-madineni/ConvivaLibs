// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaAVFoundation",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaAVFoundation",
            targets: ["ConvivaAVFoundationTarget"])
    ],
    dependencies: [
        .package(
            name: "ConvivaSDK",
            url: "https://github.com/sandeep-madineni/ConvivaSDK",
            .branch("main")
        )
    ],
    targets: [
        .target(
              name: "ConvivaAVFoundationTarget",
              dependencies: [.target(name: "ConvivaAVFoundationWrapper")],
              path: "PlatformExcludes"
            ),

        .target(
                name: "ConvivaAVFoundationWrapper",
                dependencies: [
                    .product(name: "ConvivaSDK", package: "ConvivaSDK")
                ],
                path: "ConvivaAVFoundationWrapper"
            ),
        .binaryTarget(
             name: "ConvivaAVFoundation",
             path: "./Framework/ConvivaAVFoundation.xcframework"
        )
     ]
)
