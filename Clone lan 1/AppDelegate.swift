//
//  AppDelegate.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(window: window!)
        appCoordinator!.start()

        return true
    }

}
