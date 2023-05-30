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
        
        let navC = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = navC
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }

}

