//
//  View1ViewController.swift
//  clone lan 1
//
//  Created by sang1 on 31/05/2021.
//

import UIKit
import SnapKit


class View1ViewController: UIViewController {
    weak var delegate:View1ViewControllerDelegate?

  
    
    private let button:UIButton = {
          let button = UIButton()
           button.setTitle("View1", for: .normal)
           button.backgroundColor = .red
           button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
           return button
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupButton()
       
    }
    
    @objc func buttonTapped(){
       
        print("không thể chuyển sang View2")
        delegate?.didTapStack(self)
    }
    func setupButton(){
        view.addSubview(button)
        view.backgroundColor = .red
        button.snp.makeConstraints({(make) in
          
            make.left.top.width.height.equalToSuperview()
        })
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
