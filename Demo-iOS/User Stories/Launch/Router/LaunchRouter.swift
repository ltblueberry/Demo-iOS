//
//  LaunchRouter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class LaunchRouter: LaunchRouterInput {
    // MARK: - Properties

    weak var view: ModuleTransitionable?

    // MARK: - LaunchRouterInput

    func showRootModule() {
        let viewModel = TabBarEnum.getTabs()
        let configurator = RootModuleConfigurator()
        let tabController = configurator.configure(rootControllersData: viewModel)

        DispatchQueue.main.async {
            let keyWindow = UIApplication.shared.windows.first { $0.isKeyWindow }
            keyWindow?.rootViewController = tabController
            keyWindow?.makeKeyAndVisible()
        }
    }
}
