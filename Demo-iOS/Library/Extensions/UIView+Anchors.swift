//
//  UIView+Anchors.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    public func setTop(to: NSLayoutYAxisAnchor, constant: CGFloat = 0) {
        self.topAnchor.constraint(equalTo: to, constant: constant).isActive = true
    }

    public func setLeading(to: NSLayoutXAxisAnchor, constant: CGFloat = 0) {
        self.leadingAnchor.constraint(equalTo: to, constant: constant).isActive = true
    }

    public func setTrailing(to: NSLayoutXAxisAnchor, constant: CGFloat = 0) {
        self.trailingAnchor.constraint(equalTo: to, constant: constant).isActive = true
    }

    public func setBottom(to: NSLayoutYAxisAnchor, constant: CGFloat = 0) {
        self.bottomAnchor.constraint(equalTo: to, constant: constant).isActive = true
    }

}
