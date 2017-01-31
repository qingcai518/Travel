//
//  AppDelegate.swift
//  Travel
//
//  Created by RN-079 on 2017/01/30.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        UINavigationBar.appearance().barTintColor = UIColor.main()
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName : UIFont.Helvetica18Bold(), NSForegroundColorAttributeName: UIColor.white]
        
        // tabbarの背景色を設定する.
        UITabBar.appearance().barTintColor = UIColor.bottom()
        
        // tabbarのアイコンの色を設定する.
        UITabBar.appearance().tintColor = UIColor.main()
        
        // tabbarの文字色を設定する.
        let selectedAttributes = [NSFontAttributeName : UIFont.Helvetica12(), NSForegroundColorAttributeName : UIColor.main()]
        let normalAttributes = [NSFontAttributeName : UIFont.Helvetica12(), NSForegroundColorAttributeName: UIColor.white]
        UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes(normalAttributes, for: .normal)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

