//
//  FirebaseLogger.swift
//  Eggong
//
//  Created by YunhakLee on 10/18/24.
//

public struct FirebaseLogger {
    public static func log(success: FirebaseSuccess? = nil, error: FirebaseError? = nil) {
        if let success {
            print(success)
        } else if let error {
            print(error)
        } else {
            print("Logging Error")
        }
    }
}

