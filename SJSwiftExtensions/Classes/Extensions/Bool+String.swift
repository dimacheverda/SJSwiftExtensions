//
//  Bool+String.swift
//  Voyage TCE
//
//  Created by Dmytro on 16/2/18.
//  Copyright © 2018 Dmytro Cheverda. All rights reserved.
//

import Foundation

extension Bool {
    public var stringValue: String {
        return self ? "true" : "false"
    }
}
