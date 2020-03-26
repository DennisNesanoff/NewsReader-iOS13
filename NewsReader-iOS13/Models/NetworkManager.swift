//
//  NetworkManager.swift
//  NewsReader-iOS13
//
//  Created by Dennis Nesanoff on 26.03.2020.
//  Copyright © 2020 Dennis Nesanoff. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let error = error {
                    print(error)
                } else {
                    guard let data = data else { return }
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode(Result.self, from: data)
                        self.posts = results.hits
                    } catch {
                        print(error)
                    }
                }
            }
            
            task.resume()
        }
    }
}
