//
//  UIViewWithBorder.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

/// UIView with rounded thin border
@IBDesignable
class UIViewWithBorder: UIView {
    // MARK: Properties

    /// This property is used to set border radius
    var radius: CGFloat {
        return 6.0
    }

    /// This property is used to set border color
    var borderColor: UIColor {
        return UIColor.lightGray
    }

    /// This property is used to set border width
    var borderWidth: CGFloat {
        return 0.5
    }

    // MARK: Initialization and deinitialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        applyStyle()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyStyle()
    }

    // MARK: NSObject UIKit Additions

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applyStyle()
    }

    // MARK: Private Helpers

    private func applyStyle() {
        layer.cornerRadius = radius
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
    }
}
