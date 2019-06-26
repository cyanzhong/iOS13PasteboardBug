//
//  IntentHandler.swift
//  IntentExtension
//
//  Created by cyan on 2019/6/26.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit
import Intents

private func printPasteboardString(tag: String) {
  let pasteboard = UIPasteboard.general
  let string = pasteboard.string

  print("\(tag): \(String(describing: string))")
}

class MyHandler: NSObject, MyDemoIntentIntentHandling {

  func handle(intent: MyDemoIntentIntent, completion: @escaping (MyDemoIntentIntentResponse) -> Void) {
    printPasteboardString(tag: "MyHandler.handle")
    completion(MyDemoIntentIntentResponse(code: .success, userActivity: nil))
  }

  func confirm(intent: MyDemoIntentIntent, completion: @escaping (MyDemoIntentIntentResponse) -> Void) {
    printPasteboardString(tag: "MyHandler.confirm")
    completion(MyDemoIntentIntentResponse(code: .ready, userActivity: nil))
  }
}

class IntentHandler: INExtension {

  override func handler(for intent: INIntent) -> Any {
    printPasteboardString(tag: "IntentHandler.handler")
    return MyHandler()
  }
}
