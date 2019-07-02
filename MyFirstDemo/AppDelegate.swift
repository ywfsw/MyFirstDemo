//
//  AppDelegate.swift
//  MyFirstDemo
//
//  Created by Gakkiiiiii on 2019/6/21.
//  Copyright © 2019 Gakkiiiiii. All rights reserved.
//

import UIKit
import Foundation
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        

        let Home = HomeViewController()
        // 未选中状态Tab图片
        //Home.tabBarItem.image = UIImage(named: "tab1")?.withRenderingMode(.alwaysOriginal)
        // 选中状态Tab图片
        Home.tabBarItem.selectedImage = UIImage(named: "selectTab1")?.withRenderingMode(.alwaysOriginal)
        // Tab的文本
        Home.tabBarItem.title = "Home"
        
        
        let Leads = LeadsViewController()
        //Leads.tabBarItem.image = UIImage(named: "tab2")?.withRenderingMode(.alwaysOriginal)
        Leads.tabBarItem.selectedImage = UIImage(named: "selectTab2")?.withRenderingMode(.alwaysOriginal)
        Leads.tabBarItem.title = "Leads"
        
        let Oppo = OppoViewController()
        //Oppo.tabBarItem.image = UIImage(named: "tab3")?.withRenderingMode(.alwaysOriginal)
        Oppo.tabBarItem.selectedImage = UIImage(named: "selectTab3")?.withRenderingMode(.alwaysOriginal)
        Oppo.tabBarItem.title = "Oppo"
        
        let List = ListViewController()
        List.tabBarItem.image = UIImage(named: "tab4")?.withRenderingMode(.alwaysOriginal)
        List.tabBarItem.selectedImage = UIImage(named: "selectTab4")?.withRenderingMode(.alwaysOriginal)
        List.tabBarItem.title = "报表"
        
        
        let tabBarController = UITabBarController()
        //tabBarController.tabBar.tintColor = UIColor.init(colorLiteralRed: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        tabBarController.viewControllers = [Home,Leads,Oppo,List]
        Home.title = "Home"
        let HomeNavigationController = UINavigationController(rootViewController: Home)
        Leads.title = "Leads"
        let LeadsNavigationController = UINavigationController(rootViewController: Leads)
        Oppo.title = "Oppo"
        let OppoNavigaitonController = UINavigationController(rootViewController: Oppo)
        List.title = "报表"
        let ListNavigationController = UINavigationController(rootViewController: List)
        
        tabBarController.viewControllers = [HomeNavigationController,LeadsNavigationController,OppoNavigaitonController,ListNavigationController]
        window?.rootViewController = tabBarController
        UINavigationBar.appearance().barTintColor = UIColor(red: 77/255, green:77/225, blue: 179/255, alpha: 1)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    


}

