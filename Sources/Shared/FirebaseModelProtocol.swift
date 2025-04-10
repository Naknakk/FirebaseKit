//
//  FirebaseModelProtocol.swift
//  Eggong
//
//  Created by YunhakLee on 10/18/24.
//

import Foundation

// MARK: - FirebaseFirestore
public protocol FirebaseEncodable: Encodable {
    var id: String? { get set }
}

public protocol FirebaseCodable: FirebaseEncodable, Decodable {
    
}

