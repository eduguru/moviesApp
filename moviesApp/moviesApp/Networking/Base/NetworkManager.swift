//
//  NetworkManager.swift
//  moviesApp
//
//  Created by Edwin Weru on 03/06/2023.
//

import Foundation

enum HttpMethods: String {
    case post = "POST"
    case get = "GET"
    case delete = "DELETE"
    case put = "PUT"
}

final class NetworkManager {
    static let instance = NetworkManager()
    private let urlSession: URLSession = URLSession.shared

    private init () {
    }
    
    func getData(urlString: String, httpMethod: HttpMethods, completion: @escaping (Result<Data, NetworkError>) -> Void) {
        let fullPath: String = NetworkConstants.getFullUrlForEndpoint(endpoint: urlString)

        guard let url: URL = URL(string: fullPath) else {
            completion(.failure(.badURL))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "accept")
        urlRequest.addValue("Bearer \(NetworkConstants().accessToken)", forHTTPHeaderField: "Authorization")
        
        let dataTask = urlSession.dataTask(with: urlRequest) { dataResponse, urlResponse, error in
            if error != nil {
                completion(.failure(.custom(error?.localizedDescription ?? "")))
                return
            }
            
            if let statusCode = urlResponse as? HTTPURLResponse {
                if (200...300) ~= statusCode.statusCode {
                } else {
                    completion(.failure(.badResponse))
                    return
                }
            }
            
            if let data = dataResponse {
                print(String(decoding: data, as: UTF8.self))
                completion(.success(data))
            }
        }
        
        dataTask.resume()
    }
}
