//
//  GitHubRequest.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public protocol GitHubRequest {
    associatedtype Response: Decodable
    
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var queryItems: [URLQueryItem] { get }
    var body: Encodable? { get }
}

public extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
    
    func buildURLRequest() -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        switch method {
        case .get:
            components?.queryItems = queryItems
        default:
            fatalError("サポート外メソッド")
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.url = components?.url
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
    }
    
    func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
        let decorder = JSONDecoder()
        
        if (200..<300).contains(urlResponse.statusCode) {
            return try decorder.decode(Response.self, from: data)
        } else {
            throw try decorder.decode(GitHubAPIError.self, from: data)
        }
    }
}
