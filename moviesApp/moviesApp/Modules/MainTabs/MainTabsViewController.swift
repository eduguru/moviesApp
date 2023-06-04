//
//  MainTabsViewController.swift
//  moviesApp
//
//  Created by Edwin Weru on 04/06/2023.
//

import UIKit

class MainTabsViewController: UITabBarController {

    var viewModel: MainTabsViewModel
    
    init(viewModel: MainTabsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
}

extension MainTabsViewController {

    private func setUp() {
        let vc1 = MainViewController()
        let vc2 = MoviesSearchViewController()
        let vc3 = FavoritesViewController()
        let vc4 = SettingsViewController()
        
        let viewControllers = [vc1, vc2, vc3, vc4]
        self.setViewControllers(viewControllers, animated: false)
        
        for (index, item) in viewModel.tabItems.enumerated() {
            viewControllers[index].title = item.mainTitle
            viewControllers[index].tabBarItem.title = item.tabTitle
            viewControllers[index].tabBarItem.image = UIImage(systemName: item.tabImage)
        }
    }
}
