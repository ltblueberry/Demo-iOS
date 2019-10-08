//
//  NSObject+NameOfClass.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

extension NSObject {
    var nameOfClass: String {
        return String(describing: type(of: self))
    }

    class var nameOfClass: String {
        return String(describing: self)
    }
}
