//
//  HTTPClient.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public protocol HTTPClient {
    func sendRequest(_ urlRequest: URLRequest, completion: @escaping (Result<(Data, HTTPURLResponse), Error>) -> Void)
}
