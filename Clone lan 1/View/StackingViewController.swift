//
//  StackingViewController.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import UIKit
import SnapKit



class StackingViewController: UIViewController {
    weak var delegate: StackingViewControllerDelegate?
    
    
    private let button:UIButton = {
          let button = UIButton()
           button.setTitle("StackingView", for: .normal)
           button.backgroundColor = .green
           button.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
           return button
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    @objc func buttonTapped2(){
        delegate?.didTapStack(self)
        print("đã chuyển sang View1")
    }
    func setupButton(){
        view.addSubview(button)
        view.backgroundColor = .red
        button.snp.makeConstraints({(make) in
          
            make.left.top.width.height.equalToSuperview()
        })
    }
 

}
