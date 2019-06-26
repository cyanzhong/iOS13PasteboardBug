//
//  AppDelegate.swift
//  PasteboardDemo
//
//  Created by cyan on 2019/6/26.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit
import Intents

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = UINavigationController(rootViewController: ViewController())
    window?.makeKeyAndVisible()

    let intent = MyDemoIntentIntent()
    let interaction = INInteraction(intent: intent, response: nil)
    interaction.donate(completion: nil)

    return true
  }
}

