//
//  UIViewController+ConfigureNavigation.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

extension UIViewController {
    func configureBackButton() {
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "BackButton")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "BackButton")
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    func setNavigationTitle(_ title: String?) {
        navigationItem.title = title
    }
}
