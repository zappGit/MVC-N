//
//  Network.swift
//  MVC-N
//
//  Created by Артем Хребтов on 23.06.2021.
//

import Foundation

class Network {
    private init() {}
    static let shared = Network()
    
    public func getData (url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print (json)
            } catch {
                print (error)
            }
        }.resume()
    }
}
