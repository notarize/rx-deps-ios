# rx-deps-ios

This project is configured to build RxSwift binaries that can be used in our iOS projects.

## Updating RxSwift binaries
* First, make sure that you are using the version of Xcode that you wish to target with your deployment. These binaries can only be used with the version of Xcode that they are built with.
* Then, run
```
carthage update RxSwift --platform iOS --use-xcframeworks --no-use-binaries
```
* The build files will be available in `Carthage/Build/`
* Compress each of these .xcframeworks, and update the zip archive name to include the Xcode version and RxSwift version - i.e. `RxSwift_13.2.1_6.5.0.xcframework.zip` 
* Upload these zips to our AWS S3 `ios-notarize-signer-sdk` bucket, and make sure that they're given public read access.
* Update `Package.swift` to use the new urls for the files that you uploaded
* Update the checksums for the files. The check sum can be calculated using the command
```
swift package compute-checksum INSERT_FILE_NAME_HERE.zip
```
* Commit these changes to the repo. Update the git tag for the version number, and make sure that is pushed to origin as well.