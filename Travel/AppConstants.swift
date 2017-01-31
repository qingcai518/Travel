//
//  AppConstants.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

var isLogged = Variable(UserDefaults.standard.object(forKey: UDKey.LoginFlag))

let BasicUrl = "https://main-myreader.ssl-lolipop.jp/"

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

let Female = "female"
let Male = "male"

struct UDKey {
    static let LoginFlag = "LoginFlag"
    static let FriendSearchType = "FriendSearchType"
}

enum FriendSearchType : Int {
    case All = 0
    case Female = 1
    case Male = 2
}

enum SearchItemType: Int {
    case KeywordTitle = 0
    case PositionTitle = 1
    case Keyword = 2
    case Position = 3
}
