//
//  GithubClientError.swift
//  section18
//
//  Created by 渕一真 on 2021/03/23.
//

import Foundation

public enum GitHubClientError: Error {
    case connectionError(Error)//通信に失敗
    case responseParseError(Error)//レスポンスの解釈に失敗
    case apiError(GitHubAPIError)//APIからエラーレスポンスを受け取った
    
}
