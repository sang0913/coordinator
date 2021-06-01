//
//  View2ViewController.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import UIKit

class View2ViewController: UIViewController {
    
    private let label:UILabel = {
          let label = UILabel()
        label.text = "View2"
        label.backgroundColor = .red
      
           return label
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        view.addSubview(label)
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        label.center = view.center
    }
    

}
