//
//  GitHubClientError.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/06/29.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

import Foundation

enum GitHubClientError: Error {
    case connectionrror(Error)
    
    case responseParseError(Error)
    
    case apiError(GitHubAPIError)
}
