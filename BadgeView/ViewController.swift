//
//  ViewController.swift
//  BadgeView
//
//  Created by Shrawan Shinde on 14/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let badgeCount: Int = 10
        let application = UIApplication.shared
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options:[.badge, .alert, .sound]) { (granted, error) in
            // Enable or disable features based on authorization.
            //Disable this line to display notification count on app
            UIApplication.shared.applicationIconBadgeNumber = 0;
        }
        application.registerForRemoteNotifications()
        application.applicationIconBadgeNumber = badgeCount
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

