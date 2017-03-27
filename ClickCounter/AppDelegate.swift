//
//  AppDelegate.swift
//  ClickCounter
//
//  Created by Sullivan, Dion (C.) on 3/27/17.
//  Copyright © 2017 Sullivan, Dion (C.). All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ClickerViewController(nibName: "\(ClickerViewController.self)", bundle: nil)
        window?.makeKeyAndVisible()

        return true
    }
}

