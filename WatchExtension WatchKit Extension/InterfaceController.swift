//
//  InterfaceController.swift
//  WatchExtension WatchKit Extension
//
//  Created by Christian Lorenzo on 9/27/22.
//

import WatchKit
import Foundation
import WatchConnectivity


class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    var wcSession: WCSession!
    
    //Outlets:
    @IBOutlet weak var messageLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    //WCSession Delegate functions:
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        <#code#>
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("This is the message coming from the iPhone: \(message)")
        messageLabel.setText(["messageToWatch"] as? String)
    }

}
