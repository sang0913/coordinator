


import UIKit
import  SnapKit


final class AppRootViewController:UITabBarController{
  
    //chứa 2 tabbar
    
    private let stackingCoordinator = StackingCoordinator()
    private let view1Coordinator = View1Coordinator()
   
    private var stackingViewController: UIViewController {
        return self.stackingCoordinator.rootViewController
    }
    private var view1Viewcontroller: UIViewController {
        return self.view1Coordinator.rootViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackingViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
        view1Viewcontroller.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        stackingCoordinator.start()
        view1Coordinator.start()
        self.viewControllers = [stackingViewController,view1Viewcontroller]
    }
    
 

}           
