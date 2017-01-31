//
//  FriendModel.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation

class FriendModel {
    var friendInfos = [FriendInfo]()
    
    func getFriendInfos(completion: (String?) -> Void) {
        addBasicData()
        return completion(nil)
    }
    
    func getFemaleUsers(completion : (String?) -> Void) {
        addBasicData()
        
        var count = 0
        for info in friendInfos {
            if (info.gender == Male) {
                friendInfos.remove(at: count)
            } else {
                count = count + 1
            }
        }
        
        return completion(nil)
    }
    
    func getMaleUsers(completion : (String?) -> Void) {
        addBasicData()
        
        var count = 0
        for info in friendInfos {
            if (info.gender == Female) {
                friendInfos.remove(at: count)
            } else {
                count = count + 1
            }
        }
        
        return completion(nil)
    }
    
    private func addBasicData() {
        friendInfos.removeAll()
        
        let info1 = FriendInfo(userId: 1, avatarUrl: BasicUrl + "kindergarten/child1", gender: Male, isTravelling: false)
        let info2 = FriendInfo(userId: 2, avatarUrl: BasicUrl + "kindergarten/child2", gender: Female, isTravelling: false)
        let info3 = FriendInfo(userId: 3, avatarUrl: BasicUrl + "kindergarten/child3", gender: Female, isTravelling: true)
        let info4 = FriendInfo(userId: 4, avatarUrl: BasicUrl + "kindergarten/child4", gender: Female, isTravelling: true)
        let info5 = FriendInfo(userId: 5, avatarUrl: BasicUrl + "kindergarten/child5", gender: Male, isTravelling: false)
        let info6 = FriendInfo(userId: 6, avatarUrl: BasicUrl + "kindergarten/child6", gender: Female, isTravelling: true)
        let info7 = FriendInfo(userId: 7, avatarUrl: BasicUrl + "kindergarten/child7", gender: Male, isTravelling: false)
        let info8 = FriendInfo(userId: 8, avatarUrl: BasicUrl + "kindergarten/child8", gender: Female, isTravelling: false)
        let info9 = FriendInfo(userId: 9, avatarUrl: BasicUrl + "kindergarten/child9", gender: Female, isTravelling: false)
        let info10 = FriendInfo(userId: 10, avatarUrl: BasicUrl + "kindergarten/child10", gender: Male, isTravelling: false)
        let info11 = FriendInfo(userId: 11, avatarUrl: BasicUrl + "kindergarten/child11", gender: Male, isTravelling: true)
        let info12 = FriendInfo(userId: 12, avatarUrl: BasicUrl + "kindergarten/child12", gender: Male, isTravelling: false)
        let info13 = FriendInfo(userId: 13, avatarUrl: BasicUrl + "kindergarten/child13", gender: Male, isTravelling: true)
        let info14 = FriendInfo(userId: 14, avatarUrl: BasicUrl + "kindergarten/child14", gender: Female, isTravelling: false)
        let info15 = FriendInfo(userId: 15, avatarUrl: BasicUrl + "kindergarten/child15", gender: Female, isTravelling: false)
        let info16 = FriendInfo(userId: 16, avatarUrl: BasicUrl + "kindergarten/child16", gender: Male, isTravelling: true)
        let info17 = FriendInfo(userId: 17, avatarUrl: BasicUrl + "kindergarten/child17", gender: Female, isTravelling: false)
        let info18 = FriendInfo(userId: 18, avatarUrl: BasicUrl + "kindergarten/child18", gender: Male, isTravelling: false)
        
        friendInfos.append(info1)
        friendInfos.append(info2)
        friendInfos.append(info3)
        friendInfos.append(info4)
        friendInfos.append(info5)
        friendInfos.append(info6)
        friendInfos.append(info7)
        friendInfos.append(info8)
        friendInfos.append(info9)
        friendInfos.append(info10)
        friendInfos.append(info11)
        friendInfos.append(info12)
        friendInfos.append(info13)
        friendInfos.append(info14)
        friendInfos.append(info15)
        friendInfos.append(info16)
        friendInfos.append(info17)
        friendInfos.append(info18)
    }
}
