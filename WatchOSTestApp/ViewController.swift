//
//  ViewController.swift
//  WatchOSTestApp
//
//  Created by Christian Lorenzo on 9/27/22.
//  https://www.youtube.com/watch?v=ynJRLHsRu0U

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    
    var wcSession: WCSession!
    
    //Outlets:
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
    }
    
    //WCSession functions:
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        //
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        //
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        //
    }
    
    @IBAction func messageButtonTapped(_ sender: UIButton) {
        
        guard let myMessage = messageTextField.text else {
            return
        }
        
        let message = ["messageToWatch": myMessage]
        
        wcSession.sendMessage(message, replyHandler: nil, errorHandler: {error in
            print("There was an error when sending the message: \(error.localizedDescription)")
        })
    }
}
