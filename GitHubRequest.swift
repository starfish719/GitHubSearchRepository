//
//  GitHubRequest.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/07/12.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

import Foundation

protocol GitHubRequest {
    associatedtype Response: JSONDecodable
    
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Any? { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
