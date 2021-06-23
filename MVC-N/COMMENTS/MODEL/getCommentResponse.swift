//
//  getCommentResponse.swift
//  MVC-N
//
//  Created by Артем Хребтов on 23.06.2021.
//

import Foundation
struct GetCommentResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init (json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkErrors.failInternet }
        
        var comments = [Comment]()
        for dict in array {
            guard let comment = Comment(dict: dict) else {continue}
            comments.append(comment)
        }
        self.comments = comments
    }
}
