//
//  StackingCoordinator.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import Foundation
import SwiftCoordinator
protocol StackingViewControllerDelegate:AnyObject {
    func didTapStack(_ viewcontroller:StackingViewController)
}

class StackingCoordinator : NavigationCoordinator, StackingViewControllerDelegate {
    
    
    func didTapStack(_ viewcontroller: StackingViewController) {
        let vc = View1ViewController()
        
        navigator.push(vc, animated: true)
        
    }
  
    var childCoordinators: [Coordinator] = []
 
    var navigator: NavigatorType
 
    var rootViewController: UINavigationController
   
    private let stackingViewController:StackingViewController
    
    init() {
        stackingViewController = StackingViewController()
        let navigationController = UINavigationController(rootViewController: stackingViewController)
        self.navigator = Navigator(navigationController: navigationController)
        self.rootViewController = navigationController
    }

    func start() {
        stackingViewController.delegate = self
    }
   
}
