//
//  ViewController.swift
//  LocalNotificationTest
//
//  Created by lostin1 on 2015. 3. 20..
//  Copyright (c) 2015년 lostin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var sendPhoto: UIButton!
    @IBOutlet var sendPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sendPhoto.layer.cornerRadius = 10
        sendPush.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendLocalPush(sender: AnyObject){
        var localNoti:UILocalNotification = UILocalNotification()
        localNoti.alertAction = "iOS8에서 Localpush 테스트중"
        localNoti.alertBody = "LocalNotificationTest 알림"
        localNoti.fireDate = NSDate(timeIntervalSinceNow: 30)
        localNoti.soundName = UILocalNotificationDefaultSoundName
        localNoti.applicationIconBadgeNumber = 1
        var thisApplication = UIApplication.sharedApplication()
        thisApplication.scheduleLocalNotification(localNoti)

    }
    
    @IBAction func callActivitiControll(sender: AnyObject) {
        let items:Array = ["Hello World!!"]
        let activityView:UIActivityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        self.presentViewController(activityView, animated: true, completion: nil)
    }

}

