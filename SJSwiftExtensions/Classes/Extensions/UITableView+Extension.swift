//
//  UITableView+Extension.swift
//  Voyage TCE
//
//  Created by Dmytro on 11/7/17.
//  Copyright © 2017 Dmytro Cheverda. All rights reserved.
//

import UIKit

extension UITableView {
    public func register<T: UITableViewCell>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
