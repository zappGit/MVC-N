//
//  CommentNetwork.swift
//  MVC-N
//
//  Created by Артем Хребтов on 23.06.2021.
//

import Foundation
class CommentNetwork {
    private init(){}
    
    static func getComment(complition: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else {return}
        Network.shared.getData(url: url) { (json) in
            
        }
    }
}
