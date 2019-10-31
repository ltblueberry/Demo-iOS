//
//  LaunchPresenter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

final class LaunchPresenter: LaunchViewOutput {
    // MARK: - Properties

    var router: LaunchRouterInput?

    // MARK: - LaunchViewOutput

    func viewDidAppear() {
        // It's an example, dispatch is only for a delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.router?.showRootModule()
        }
    }
}
