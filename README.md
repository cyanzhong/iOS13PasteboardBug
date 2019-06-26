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
