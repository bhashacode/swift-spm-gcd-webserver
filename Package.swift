// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "GCDWebServer",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "GCDWebServer",
      targets: ["GCDWebServer"]
    )
  ],
  targets: [
    .target(
      name: "GCDWebServer",
      path: "Sources/GCDWebServer",
      resources: [
        .copy("Resources/GCDWebUploader.bundle")
      ],
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("Private")
      ],
      linkerSettings: [
        .linkedFramework("CFNetwork"),
        .linkedFramework("CoreServices"),
        .linkedFramework("SystemConfiguration"),
        .linkedLibrary("xml2"),
        .linkedLibrary("z")
      ]
    )
  ]
)
