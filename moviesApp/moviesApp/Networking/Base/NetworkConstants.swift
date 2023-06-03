//
//  NetworkConstants.swift
//  moviesApp
//
//  Created by Edwin Weru on 03/06/2023.
//

import Foundation

final class NetworkConstants {
    
    private static var baseUrl: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    private static var apiKey: String {
        get {
            return "e1c3cd502bb8fb6c2baac7bcdd928dd6"
        }
    }
    
    var accessToken: String {
        get {
            return "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlMWMzY2Q1MDJiYjhmYjZjMmJhYWM3YmNkZDkyOGRkNiIsInN1YiI6IjY0N2FlYTAyY2Y0YjhiMDBjM2QyMDc5MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.xM3Froy-CLV2mfDp_Tt13w53tQDFIjVwe41Y9oFoCzY"
        }
    }
    
    private static var accountId: String {
        get {
            return "19807436"
        }
    }
    
    static func getFullUrlForEndpoint(endpoint: String) -> String {
        return baseUrl + endpoint
    }
}
