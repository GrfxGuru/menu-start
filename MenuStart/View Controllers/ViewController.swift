//
//  ViewController.swift
//  MenuStart
//
//  Created by Peter Witham on 5/5/19.
//  Copyright © 2019 Peter Witham. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    // MARK: - View Management
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    // MARK: - UI Controls
    
    @IBAction func openiTerm(_ sender: NSButton) {
            startApp(appName: "iterm")
    }
    @IBAction func quitApplication(_ sender: NSButton) {
        quitApp()
    }
    // MARK: - Business
    
    func startApp(appName: String) {
        NSWorkspace.shared.launchApplication(appName)
    }
    
    func quitApp() {
        NSApplication.shared.terminate(self)
    }
    
}

