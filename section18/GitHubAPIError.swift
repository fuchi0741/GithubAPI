//
//  GitHubAPIError.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public struct GitHubAPIError: Decodable, Error {
    public struct Error: Decodable {
        public var resourse: String
        public var field: String
        public var code: String
    }
    
    public var message: String
    public var errors: [Error]
}
