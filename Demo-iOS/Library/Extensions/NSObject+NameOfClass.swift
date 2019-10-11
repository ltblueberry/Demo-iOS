//
//  NSObject+NameOfClass.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

extension NSObject {

    /// Returns name of class
    var nameOfClass: String {
        return String(describing: type(of: self))
    }

    /// Returns name of class
    class var nameOfClass: String {
        return String(describing: self)
    }
}
