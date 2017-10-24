//
//  AlertService.swift
//  Remind(Notifications)
//
//  Created by 123 on 24.10.17.
//  Copyright © 2017 123. All rights reserved.
//

import UIKit

class AlertService {
    
    private init() {}
    
    static func actionSheet(in vc: UIViewController, title: String, complition: @escaping () -> Void) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: title, style: .default) { (_) in
            complition()
        }
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
}
