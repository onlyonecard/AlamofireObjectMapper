// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Alamofire/Alamofire.git",
            .exact("5.4.1")
        ),
        .package(
            url: "https://github.com/tristanhimmelman/ObjectMapper.git",
            .exact("4.2.0")
        ),
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: ["Alamofire", "ObjectMapper"],
            path: "./AlamofireObjectMapper"
        ),
    ]
)
