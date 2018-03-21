//
//  ReusableView.swift
//  Voyage TCE
//
//  Created by Dmytro on 11/7/17.
//  Copyright © 2017 Dmytro Cheverda. All rights reserved.
//

import UIKit

public protocol ReusableView: class { }

extension ReusableView where Self: UIView {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
