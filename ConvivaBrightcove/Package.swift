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
    targets: [
        .binaryTarget(
            name: "ConvivaAVFoundation",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/main/ConvivaAVFoundation/1.0.0/ConvivaAVFoundation.xcframework.zip",
            checksum: "f6702ad35ee8e81380ee5bfb511796ed6d82b572c90f107df88f6e8cb5affdad"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/sandeep-madineni/ConvivaLibs/raw/main/ConvivaSDK/1.0.0/ConvivaSDK.xcframework.zip",
            checksum: "a2786cb0ce33c0277c586030c94d2076a6afd028eab3c416ee78c96d800673b6"),

        .target(
              name: "ConvivaAVFoundationTarget",
              dependencies: [
                .target(name: "ConvivaSDK"),
                .target(name: "ConvivaAVFoundation")
              ],
              path: "PlatformExcludes"
            )
     ]
)
