//
//  main.swift
//  GitHubSearchRepository
//
//  Created by TodaChihaya on 2017/06/28.
//  Copyright © 2017年 TodaChihaya. All rights reserved.
//

import Foundation

print("Enter your query here > ", terminator: "")

// 入力された検索クエリの取得
guard let keyword = readLine(strippingNewline: true) else {
    exit(1)
}

// APIクライアントの生成
let client = GitHubClient()

// リクエストの発行
let request = GitHubAPI.SearchRepositories(ketword: keyword)

client.send(request: request) { result in
    switch result {
    case let .success(response):
        // リポジトリの所有者と名前を出力
        for item in response.items {
            print(item.owner.login + "/" + item.name)
        }
        exit(0)
    case let .failure(error):
        // エラー詳細を出力
        print(error)
        exit(1)
    }
}

// タイムアウト時間
let timeoutInterval: TimeInterval = 60

// タイムアウトまでメインスレッドを停止
Thread.sleep(forTimeInterval: timeoutInterval)

// タイムアウト後の処理
print("Connection timeout")
exit(1)
