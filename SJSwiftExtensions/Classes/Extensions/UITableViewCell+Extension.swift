//
//  UITableViewCell+Extension.swift
//  Voyage TCE
//
//  Created by Dmytro on 11/7/17.
//  Copyright © 2017 Dmytro Cheverda. All rights reserved.
//

import UIKit

extension UITableViewCell: ReusableView, NibLoadableView {
    public static var identifier: String {
        return String(describing: self.self)
    }
}
