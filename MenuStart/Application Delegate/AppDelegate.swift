//
//  AppDelegate.swift
//  MenuStart
//
//  Created by Peter Witham on 5/5/19.
//  Copyright © 2019 Peter Witham. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.button?.title = "😱"
        statusItem.button?.target = self
        statusItem.button?.action = #selector(showApp)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func showApp() {
        let storyboard = NSStoryboard(name: "Main", bundle:nil)
        guard let vc = storyboard.instantiateController(withIdentifier: "ViewController") as? ViewController else {
            fatalError("Unable to find ViewController in the storyboard.")
        }
        
        guard let button = statusItem.button else {
            fatalError("Could not find the status item button.")
        }
        
        let popoverView = NSPopover()
        popoverView.contentViewController = vc
        popoverView.behavior = .transient
        popoverView.show(relativeTo: button.bounds, of: button, preferredEdge: .maxY)
    }

}

