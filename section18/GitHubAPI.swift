//
//  GitHubAPI.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public final class GitHubAPI {
    
    public struct SearchRepositories: GitHubRequest {
        public let keyword: String
        
        public typealias Response = SearchResponse<Repository>
        
        public var method: HTTPMethod {
            return .get
        }
        
        public var path: String {
            return "/search/repositories"
        }
        
        
        public var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
        
        public var body: Encodable?
        
        
        
        
        
    }
    
    
    
}
