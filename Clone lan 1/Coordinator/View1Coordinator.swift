//
//  View1Coordinator.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import Foundation
import SwiftCoordinator

protocol View1ViewControllerDelegate:AnyObject {
    func didTapStack(_ viewcontroller:View1ViewController)
}

class View1Coordinator : NavigationCoordinator, View1ViewControllerDelegate {
  
    func didTapStack(_ viewcontroller: View1ViewController) {
        let vc = View2ViewController()
        
        navigator.push(vc, animated: true)
    }

    
    var childCoordinators: [Coordinator] = []
   
    var navigator: NavigatorType
 
    var rootViewController: UINavigationController
   
    private let view1Viewcontroller:View1ViewController
    
    
    init() {
        view1Viewcontroller = View1ViewController()
        let navigationController = UINavigationController(rootViewController: view1Viewcontroller)
        
        self.navigator = Navigator(navigationController: navigationController)
        self.rootViewController = navigationController
    }
    
    func start() {
        view1Viewcontroller.delegate = self
        
        
    }
   
   
}
