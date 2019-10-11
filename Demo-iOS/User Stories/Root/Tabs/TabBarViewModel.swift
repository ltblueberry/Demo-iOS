//
//  TabBarViewModel.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

 /// Tab item model
class TabBarViewModel {
    var title: String
    var image: UIImage?
    var controller: UIViewController
    var isEnabled: Bool
    var withNavigation: Bool

    init(title: String, image: UIImage? = nil, controller: UIViewController, isEnabled: Bool, withNavigation: Bool) {
        self.title = title
        self.image = image
        self.controller = controller
        self.isEnabled = isEnabled
        self.withNavigation = withNavigation
    }
}
