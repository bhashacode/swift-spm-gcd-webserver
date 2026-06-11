# Release Notes

## SwiftPM-only iOS package migration

* Removed legacy third-party distribution support from this fork.
* Added first-class Swift Package Manager support with the `GCDWebServer` library product.
* Moved Objective-C sources and public headers into the SwiftPM `Sources/GCDWebServer` layout.
* Bundled the GCDWebUploader web assets as SwiftPM target resources.
* Minimum supported iOS runtime is 15.6. The package manifest uses `.iOS(.v15)` because SwiftPM cannot express iOS 15.6 exactly.
