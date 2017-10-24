//
//  ViewController.swift
//  Remind(Notifications)
//
//  Created by 123 on 24.10.17.
//  Copyright © 2017 123. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNService.shared.authorize()
        CLService.shared.authorize()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didEnterRegion),
                                               name: NSNotification.Name("internalNotification.enteredRegion"),
                                               object: nil)
    }
    
    
    @IBAction func onTimeTapped(_ sender: Any) {
        AlertService.actionSheet(in: self, title: "5 seconds") {
            UNService.shared.timerRequest(with: 5)
        }
    }
    
    @IBAction func onDateTapped(_ sender: Any) {
        AlertService.actionSheet(in: self, title: "Some future Time") {
            var components = DateComponents()
            components.second = 0
            UNService.shared.dateRequest(with: components)
        }
    }
    
    @IBAction func onLocationTapped(_ sender: Any) {
        AlertService.actionSheet(in: self, title: "when  i return") {
            CLService.shared.updateLocation()
        }
        
    }
    
    @objc
    func didEnterRegion() {
        UNService.shared.locationRequest()
    }
}

