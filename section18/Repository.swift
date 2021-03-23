//
//  Repository.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

struct Repository: Decodable {
    public var id: Int
    public var name: String
    public var fullName: String
    public var owner: User
}
