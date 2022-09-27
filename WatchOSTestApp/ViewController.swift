//
//  ViewController.swift
//  WatchOSTestApp
//
//  Created by Christian Lorenzo on 9/27/22.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {

    var wcSession: WCSession!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
    }


}

