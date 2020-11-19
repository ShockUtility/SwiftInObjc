//
//  TestViewController.swift
//  SwiftInObjc
//
//  Created by 전상현 on 2020/11/19.
//

import UIKit

@objc
protocol TestViewDelegate {
    @objc func confirm(result: String)
}

@objc
class TestViewController: UIViewController {

    @objc var delegate: TestViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClick(_ sender: Any) {
        self.dismiss(animated: true) {
            self.delegate?.confirm(result: "^^")
        }
    }
}
