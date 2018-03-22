//
//  String+Extension.swift
//  Voyage TCE
//
//  Created by Dmytro on 12/27/17.
//  Copyright © 2017 Dmytro Cheverda. All rights reserved.
//

import Foundation

extension String {
    public var isLowercased: Bool {
        return self == self.lowercased()
    }
    
    public var isNotEmpty: Bool {
        return !isEmpty
    }
}
