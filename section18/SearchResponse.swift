//
//  SearchResponse.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public struct SearchResponse<Item: Decodable>: Decodable {
    public var totalCount: Int
    public var items: [Item]
    
    public enum Codingkeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
