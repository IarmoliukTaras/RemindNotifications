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
    }
    
    
    @IBAction func onTimeTapped(_ sender: Any) {
        
    }
    
    @IBAction func onDateTapped(_ sender: Any) {
        
    }
    
    @IBAction func onLocationTapped(_ sender: Any) {
        
    }
}

