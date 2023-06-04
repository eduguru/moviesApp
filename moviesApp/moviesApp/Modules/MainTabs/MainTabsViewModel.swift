//
//  MainTabsViewModel.swift
//  moviesApp
//
//  Created by Edwin Weru on 04/06/2023.
//

import Foundation

final class MainTabsViewModel {
    // MARK: - Properties
    let tabItems: [MainTab] = [
        MainTab(mainTitle: "Discover", tabTitle: "Home", tabImage: "house"),
        MainTab(mainTitle: "Search", tabTitle: "Search", tabImage: "magnifyingglass"),
        MainTab(mainTitle: "Favorites", tabTitle: "Favorites", tabImage: "star"),
        MainTab(mainTitle: "Settings", tabTitle: "Settings", tabImage: "gear")
    ]
    
    struct MainTab {
        let mainTitle: String
        let tabTitle: String
        let tabImage: String
    }
}
