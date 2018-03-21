//
//  UIViewController+Extension.swift
//  Voyage TCE
//
//  Created by Dmytro on 11/7/17.
//  Copyright © 2017 Dmytro Cheverda. All rights reserved.
//

import UIKit

extension UIViewController {
    public static var identifier: String {
        return String(describing: self.self)
    }
    
    /// Call on ViewController that pushing another UIViewController onto stack
    public func hideBackButtonTitle() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
    }
}
