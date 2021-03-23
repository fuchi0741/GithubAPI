//
//  Repository.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public struct Repository : Decodable {
    public var id: Int
    public var name: String
    public var fullName: String
    public var owner: User
    
    public enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
