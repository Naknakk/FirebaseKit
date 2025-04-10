// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "FirebaseFirestoreKit", targets: ["FirebaseFirestoreKit"]),
        .library(name: "FirebaseAuthKit", targets: ["FirebaseAuthKit"]),
        .library(name: "FirebaseStorageKit", targets: ["FirebaseStorageKit"])
    ],
    dependencies: [
        
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "Shared",
            path: "Sources/Shared"
        ),
        .target(
            name: "FirebaseFirestoreKit",
            dependencies: [
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
                "Shared"
            ],
            path: "Sources/Firestore"
        ),
        .target(
            name: "FirebaseAuthKit",
            dependencies: [.product(name: "FirebaseAuth", package: "firebase-ios-sdk")],
            path: "Sources/Auth"
        ),
        .target(
            name: "FirebaseStorageKit",
            dependencies: [
                
                .product(name: "FirebaseStorage", package: "firebase-ios-sdk"),
                "Shared"
            ],
            path: "Sources/Storage"
        ),
        
        .testTarget(
            name: "FirebaseAuthKitTests",
            dependencies: ["FirebaseAuthKit"],
            path: "Tests/AuthTests"
        ),
        .testTarget(
            name: "FirebaseFirestoreKitTests",
            dependencies: ["FirebaseFirestoreKit"],
            path: "Tests/FirestoreTests"
        ),
        .testTarget(
            name: "FirebaseStorageKitTests",
            dependencies: ["FirebaseStorageKit"],
            path: "Tests/StorageTests"
        )
    ]
    
)
