// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMPocketCasts/github/kpgalligan/kmmpocketcasts/allshared-kmmbridge/0.88.1/allshared-kmmbridge-0.88.1.zip"
let remoteKotlinChecksum = "aab508777acd6cfe3fcca997c76a597db4b6cc5b643b1e738559ad76997422e0"
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