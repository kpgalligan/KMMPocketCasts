// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMPocketCasts/github/kpgalligan/kmmpocketcasts/allshared-kmmbridge/0.8.0/allshared-kmmbridge-0.8.0.zip"
let remoteKotlinChecksum = "c84f2818f2c289851a93bf418f3ec21e4998197d59cf8ad2bcb8459479dde6bb"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)