//
//  TravelInfo.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation

class TravelInfo {
    var travelId : Int
    var userId: Int
    var destination : String
    var departure: String
    var travelDate: String
    var description : String
    var avatarUrl : String
    var userName: String
    var gender : String
    var publishTime : String
    var publishPlace : String
    
    init(travelId: Int, userId: Int, destination: String, departure: String, travelDate: String, description: String, avatarUrl: String, userName: String, gender: String, publishTime: String, publishPlace: String) {
        self.travelId = travelId
        self.userId = userId
        self.destination = destination
        self.departure = departure
        self.travelDate = travelDate
        self.description = description
        self.avatarUrl = avatarUrl
        self.userName = userName
        self.gender = gender
        self.publishTime = publishTime
        self.publishPlace = publishPlace
    }
}
