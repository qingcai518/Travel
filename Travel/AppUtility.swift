//
//  AppUtility.swift
//  Travel
//
//  Created by RN-079 on 2017/01/31.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation
import UIKit

class AppUtility {
    static func getIdleImages() -> [UIImage]{
        return [UIImage(named: "music_red")!]
    }
    
    static func getPullingImages() -> [UIImage] {
        return [UIImage(named: "music_blue")!]
    }
    
    static func getRefreshingImages() -> [UIImage] {
        return [UIImage(named: "music_red")!, UIImage(named: "music_blue")!, UIImage(named: "music_black")!]
    }
}
