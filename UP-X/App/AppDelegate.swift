//
//  AppDelegate.swift
//  UP-X
//
//  Created by Irisandromeda on 31.01.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        
        let viewController = ModulesBuilder.createMenuModule()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }

}

