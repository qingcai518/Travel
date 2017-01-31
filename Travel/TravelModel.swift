
//
//  TravelModel.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation

class TravelModel {
    var travelInfos = [TravelInfo]()
    
    func getTravelInfos(completion: (String?) -> Void) {
        let info1 = TravelInfo(travelId: 1, userId: 1, destination: "丽江", departure: "南京市", travelDate: "2017年1月28日 5天", description: "一对一真人视频直播懂的加微信：jingdameiren66", avatarUrl: BasicUrl + "kindergarten/child1", userName: "静静", gender: Female, publishTime: "今天14:52", publishPlace: "发布于 火星")
        
        let info2 = TravelInfo(travelId: 2, userId: 2, destination: "色达", departure: "成都", travelDate: "2017年2月3日 7天", description: "2月3号成都出发色达，一路边走边玩，有没有小伙伴一起去的，可微信联系qitaoren033989", avatarUrl: BasicUrl + "kindergarten/child2", userName: "美丽邂逅", gender: Male, publishTime: "今天 14:30", publishPlace: "发布于 都江堰")
        
        let info3 = TravelInfo(travelId: 3, userId: 1, destination: "丽江", departure: "南京市", travelDate: "2017年1月28日 5天", description: "一对一真人视频直播懂的加微信：jingdameiren66", avatarUrl: BasicUrl + "kindergarten/child1", userName: "静静", gender: Female, publishTime: "今天12:30", publishPlace: "发布于 火星")
        
        let info4 = TravelInfo(travelId: 4, userId: 3, destination: "色达", departure: "成都", travelDate: "2017年2月2日 4天", description: "成都出发：大年初六从成都出发，去世界最大的藏传佛教佛学院，去色达五明佛学院祈福，开启净化心灵之旅，去看藏区最神圣的天葬。\n我在成都等你，赶快拿起你的手机加上我的微信:13558607630", avatarUrl: BasicUrl + "kindergarten/child3", userName: "畅游天下", gender: Male, publishTime: "今天11:30", publishPlace: "发布于 都江堰")
        
        let info5 = TravelInfo(travelId: 5, userId: 4, destination: "拉塞", departure: "成都", travelDate: "2017年3月15日 18天", description: "本人男，有多次进藏经验 3月15号准备出发西藏兜一圈", avatarUrl: BasicUrl + "kindergarten/child4", userName: "我的乌托邦", gender: Male, publishTime: "今天11:25", publishPlace: "发布于 江苏省 徐州市")
        
        let info6 = TravelInfo(travelId: 6, userId: 5, destination: "大阪 京都 奈良", departure: "东京", travelDate: "2017年3月30日 5天", description: "东京-大阪-京都-奈良的顺序前进", avatarUrl: BasicUrl + "kindergarten/child5", userName: "kaka", gender: Male, publishTime: "今天10:52", publishPlace: "发布于 火星")
        
        let info7 = TravelInfo(travelId: 7, userId: 6, destination: "西藏", departure: "温州", travelDate: "2017年4月15日 1天", description: "", avatarUrl: BasicUrl + "kindergarten/child6", userName: "海盗", gender: Male, publishTime: "昨天15:24", publishPlace: "发布于 温州")
        
        let info8 = TravelInfo(travelId: 8, userId: 6, destination: "西藏", departure: "温州", travelDate: "2017年4月9日 1天", description: "", avatarUrl: BasicUrl + "kindergarten/child6", userName: "海盗", gender: Male, publishTime: "昨天11:30", publishPlace: "发布于 温州")
        
        let info9 = TravelInfo(travelId: 9, userId: 7, destination: "川进青出自驾", departure: "咸阳", travelDate: "2017年4月16日 5天", description: "2017年4月16日西安出发川进青出15天自驾游！纯玩四驱越野车，除固定车费以外其他费用AA，司机食宿由拼车人员均摊。丰俭而已。一起去感受西藏的春天吧！微信电话同步15686107080", avatarUrl: BasicUrl + "kindergarten/child7", userName: "索南达杰", gender: Male, publishTime: "前天10:30", publishPlace: "发布于 咸阳")
        
        let info10 = TravelInfo(travelId: 10, userId: 8, destination: "尼泊尔", departure: "深圳", travelDate: "2017年3月1日 10天", description: "结合志同道合的朋友，时间地点可以再商量", avatarUrl: BasicUrl + "kindergarten/child8", userName: "小梦", gender: Female, publishTime: "2天前", publishPlace: "发布于 深圳")
        
        travelInfos.append(info1)
        travelInfos.append(info2)
        travelInfos.append(info3)
        travelInfos.append(info4)
        travelInfos.append(info5)
        travelInfos.append(info6)
        travelInfos.append(info7)
        travelInfos.append(info8)
        travelInfos.append(info9)
        travelInfos.append(info10)
        
        return completion(nil)
    }
}
