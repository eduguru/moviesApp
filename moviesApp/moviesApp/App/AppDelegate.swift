//
//  AppDelegate.swift
//  moviesApp
//
//  Created by Edwin Weru on 30/05/2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window  = UIWindow(frame: UIScreen.main.bounds)
        
        let viewModel = MainTabsViewModel()
        let vc = MainTabsViewController(viewModel: viewModel)
        vc.viewModel = viewModel
        
        let navC = UINavigationController(rootViewController: vc)
        window.rootViewController = navC
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }

}

