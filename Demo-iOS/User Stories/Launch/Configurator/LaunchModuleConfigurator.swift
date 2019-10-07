//
//  LaunchModuleConfigurator.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class LaunchModuleConfigurator {
    // MARK: - Internal methods

    func configure() -> LaunchViewController {
        guard let view = UIStoryboard(name: String(describing: LaunchViewController.self),
                                      bundle: Bundle.main).instantiateInitialViewController() as? LaunchViewController else {
            fatalError("Can't load LaunchViewController from storyboard, check that controller is initial view controller")
        }
        let presenter = LaunchPresenter()
        let router = LaunchRouter()

        presenter.router = router
        router.view = view
        view.output = presenter

        return view
    }
}
