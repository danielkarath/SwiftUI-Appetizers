//
//  SANetworkManager.swift
//  SwiftUI-Appetizers
//
//  Created by Daniel Karath on 2/9/23.
//

import UIKit

final class SANetworkManager {
    
    static let shared = SANetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    private let appetizerURL: String = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    
    private init() {}
    
    public func getAppetizers(completion: @escaping (Result<[Appetizer], SAError>) -> Void ) {
        guard let url = URL(string: appetizerURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200, error == nil else {
                completion(.failure(.unableToComplete))
                return
            }
            
            do {
                let decodedResult = try JSONDecoder().decode(AppetizerResponse.self, from: data)
                completion(.success(decodedResult.request))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    public func getAppetizerImage(fromURLString urlString: String, completion: @escaping (UIImage?) -> Void) {
        //Check if uiimage is in cache
        let cacheKey = NSString(string: urlString)
        if let image = cache.object(forKey: cacheKey) {
            completion(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completion(nil
                )
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completion(image)
        }
        task.resume()
    }
}
