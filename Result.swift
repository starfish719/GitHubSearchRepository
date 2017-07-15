//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/07/15.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

import Foundation

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
