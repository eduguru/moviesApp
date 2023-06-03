//
//  MoviesApi.swift
//  moviesApp
//
//  Created by Edwin Weru on 03/06/2023.
//

import Foundation

final class MoviesApi {
    
    static func makeGetMoviesListTarget() {
        NetworkManager.instance.getData(
            urlString: "movie/popular",
            httpMethod: .get) { result in
                switch result {
                case .success(let data):
                    print("we have a response \(data)")
                case .failure(let error):
                    print("we have an error \(error)")
                }
            }
    }
}
