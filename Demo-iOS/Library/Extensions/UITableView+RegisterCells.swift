//
//  UITableView+RegisterCells.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

extension UITableView {

    /// Register cell with class and identifier
    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String(describing: cellClass)
        register(cellClass, forCellReuseIdentifier: identifier)
    }

    /// Register cell with nib and identifier
    func registerCellNib(_ cellClass: AnyClass) {
        let identifier = String(describing: cellClass)
        let nib = UINib(nibName: identifier, bundle: nil)
        register(nib, forCellReuseIdentifier: identifier)
    }

    /// Register table footer with class and identifier
    func registerHeaderFooterViewClass(_ viewClass: AnyClass) {
        let identifier = String(describing: viewClass)
        register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
    }

    /// Register table footer with nib and identifier
    func registerHeaderFooterViewNib(_ viewClass: AnyClass) {
        let identifier = String(describing: viewClass)
        let nib = UINib(nibName: identifier, bundle: nil)
        register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
}
