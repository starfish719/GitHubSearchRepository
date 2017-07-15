//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/07/12.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

final class GitHubAPI {
    struct SearchRepositories: GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var parameters: Any? {
            return ["q": keyword]
        }
    }
    
    struct SearchUsers: GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<User>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/users"
        }
        
        var parameters: Any? {
            return ["q": keyword]
        }
    }
}
