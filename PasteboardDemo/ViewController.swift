//
//  ViewController.swift
//  PasteboardDemo
//
//  Created by cyan on 2019/6/26.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

    let textView = UITextView(frame: view.bounds)
    textView.isEditable = false
    textView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    textView.text =
    """
    # Before repro

    - Make sure you're using iOS 13 Beta 2
    - Copy some text to pasteboard

    # In Shortcuts.app

    - Create a Shortcut
    - Search "PasteboardDemo"
    - Add it as an action

    # In Xcode

    - Attach "IntentExtension" as the debugging target
    - Choose Shortcuts.app to run
    - Run the Shorcut we have just created

    # Result

    - UIPasteboard.general.string is always nil
    - UIPasteboard.general.items is an empty array
    """
    view.addSubview(textView)
  }
}

