//
//  AppCoordinator.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import Foundation
import UIKit
import SwiftCoordinator

final class AppCoordinator: PresentationCoordinator {
    var childCoordinators: [Coordinator] = []
    var rootViewController = AppRootViewController()

    init(window: UIWindow) {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }

    func start() {
        
    }
}
