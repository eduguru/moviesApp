//
//  NetworkError.swift
//  moviesApp
//
//  Created by Edwin Weru on 03/06/2023.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case custom(String)
    case badResponse
}
