//
//  ViewController.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import RxSwift
import Kingfisher

class ViewController: UIViewController {
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return
         .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setEndEditing() {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.doEnd(_:)))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
    }
    
    func doEnd(_ sender: UITapGestureRecognizer?) {
        self.view.endEditing(true)
    }
}

