//
//  UITableView+RegisterCells.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

extension UITableView {

    func registerCellClass(_ cellClass: AnyClass) {
        let identifier = String(describing: cellClass)

        register(cellClass, forCellReuseIdentifier: identifier)
    }

    func registerCellNib(_ cellClass: AnyClass) {
        let identifier = String(describing: cellClass)
        let nib = UINib(nibName: identifier, bundle: nil)
        register(nib, forCellReuseIdentifier: identifier)
    }

    func registerHeaderFooterViewClass(_ viewClass: AnyClass) {
        let identifier = String(describing: viewClass)

        register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
    }

    func registerHeaderFooterViewNib(_ viewClass: AnyClass) {
        let identifier = String(describing: viewClass)
        let nib = UINib(nibName: identifier, bundle: nil)

        register(nib, forHeaderFooterViewReuseIdentifier: identifier)
    }
}
