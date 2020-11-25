//
//  AppDelegate.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        let rootVC = HomeViewController()
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        
        return true
    }

}

