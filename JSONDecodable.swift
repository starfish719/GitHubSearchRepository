//
//  JSONDecodable.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/06/28.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

import Foundation

protocol JSONDecodable {
    init(json: Any) throws
}
