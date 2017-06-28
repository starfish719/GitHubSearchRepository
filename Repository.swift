//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/06/28.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

import Foundation

struct Repository: JSONDecodable {
    let id: Int
    let name: String
    let fullname: String
    let owner: User
    
    init(json: Any) throws {
        guard let dictionary = json as? [String: Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }
        
        guard let name = dictionary["name"] as? String else {
            throw JSONDecodeError.missingValue(key: "name", actualValue: dictionary["name"])
        }
        
        guard let fullname = dictionary["fullname"] as? String else {
            throw JSONDecodeError.missingValue(key: "fullname", actualValue: dictionary["fullname"])
        }
        
        guard let owner = dictionary["owner"] else {
            throw JSONDecodeError.missingValue(key: "owner", actualValue: dictionary["owner"])
        }
        
        self.id = id
        self.name = name
        self.fullname = fullname
        self.owner = try User(json: owner)
    }
}
