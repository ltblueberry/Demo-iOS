//
//  RootModuleConfigurator.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

final class RootModuleConfigurator {
    // MARK: - Internal methods

    func configure(rootControllersData: [TabBarViewModel]) -> RootViewController {
        let tabBarController = RootViewController()
        tabBarController.tabBar.tintColor = UIColor.systemBlue
        tabBarController.tabBar.barTintColor = UIColor.systemBackground
        tabBarController.tabBar.unselectedItemTintColor = UIColor.systemGray
        tabBarController.tabBar.isTranslucent = false

        var rootControllers: [UIViewController] = []
        for controllerData in rootControllersData {
            let itemController: UIViewController
            if controllerData.withNavigation {
                itemController = TabItemNavigationController(rootViewController: controllerData.controller)
            } else {
                itemController = controllerData.controller
            }
            itemController.tabBarItem = UITabBarItem(title: controllerData.title, image: controllerData.image, selectedImage: nil)
            itemController.tabBarItem.isEnabled = controllerData.isEnabled
            rootControllers.append(itemController)
        }
        tabBarController.viewControllers = rootControllers
        tabBarController.selectedIndex = 0

        return tabBarController
    }
}
