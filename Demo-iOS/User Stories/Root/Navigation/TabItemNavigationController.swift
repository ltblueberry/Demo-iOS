//
//  TabItemNavigationController.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

import UIKit

class TabItemNavigationController: UINavigationController {

    /// This property is used to set the default font for origin title
    var defaultFont: UIFont {
        return UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold)
    }

    /// This property is used to set the default font for large title
    var defaultLargeFont: UIFont {
        return UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.semibold)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    /// Configure UI of navigation controller
    private func setupUI() {
        let foregroundColor = UIColor.systemBlue
        navigationBar.isTranslucent = false
        navigationBar.tintColor = foregroundColor
        navigationBar.barTintColor = UIColor.white
        navigationBar.titleTextAttributes = [.foregroundColor: foregroundColor, .font: defaultFont]
        if #available(iOS 11.0, *) {
            self.navigationBar.largeTitleTextAttributes = [.foregroundColor: foregroundColor, .font: defaultLargeFont]
            self.navigationBar.prefersLargeTitles = false
        }
        // backbutton
        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        navigationBar.backItem?.title = " "

        // remove black bug large navigation pop back
        view.backgroundColor = UIColor.white
    }
}
