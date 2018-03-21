//
//  NibLoadableView.swift
//  Voyage TCE
//
//  Created by Dmytro on 11/7/17.
//  Copyright © 2017 Dmytro Cheverda. All rights reserved.
//

import UIKit

public protocol NibLoadableView: class { }

extension NibLoadableView where Self: UIView {
    public static var nibName: String {
        return String(describing: self)
    }
    
    public static var loadFromNib: Self {
        guard let view = Bundle.main.loadNibNamed(self.nibName, owner: self, options: nil)?.first as? Self else {
            fatalError()
        }
        return view
    }
}
