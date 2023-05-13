//
//  NetworkHelper.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/12/23.
//

import Foundation
import SwiftUI

class NetworkHelper {
    
    static func fetchNewsArticles(completion: @escaping (Result<[Article], ArticleError>) -> Void) {
        
        let baseURL = "https://nba-stories.onrender.com/articles/"
        
        let components = URLComponents(string: baseURL)
        
        guard let finalURL = components?.url else { return completion(.failure(.invalidURL)) }
        
        URLSession.shared.dataTask(with: finalURL) { data, response, error in
            
            if let error = error {
                return completion(.failure(.thrownError(error)))
            }
            
            if let response = response as? HTTPURLResponse {
                print("Fetched Teams status code: \(response.statusCode)")
            }
            
            guard let data = data else {return completion(.failure(.noData))}
            
            do {
                guard var articles = try JSONDecoder().decode([Article]?.self, from: data) else { return completion(.failure(.noData)) }
                let final = articles.map { article -> Article in
                    var tempArticle = article
                    tempArticle.id = "\(UUID())"
                    return tempArticle
                }
                
                completion(.success(final))
            } catch {
                completion(.failure(.thrownError(error)))
            }
            
        }.resume()
    }
    
}
