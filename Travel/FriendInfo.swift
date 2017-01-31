//
//  FriendInfo.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation

class FriendInfo {
    var userId: Int
    var avatarUrl: String
    var gender: String
    var isTravelling: Bool
    
    init(userId: Int, avatarUrl: String, gender: String, isTravelling: Bool) {
        self.userId = userId
        self.avatarUrl = avatarUrl
        self.gender = gender
        self.isTravelling = isTravelling
    }
}
