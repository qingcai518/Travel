//
//  Nav1Controller.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

class Nav1Controller: NavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Travel", bundle: nil)
        guard let next = storyboard.instantiateInitialViewController() as? TravelController else {
            return
        }
        
        self.viewControllers = [next]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
