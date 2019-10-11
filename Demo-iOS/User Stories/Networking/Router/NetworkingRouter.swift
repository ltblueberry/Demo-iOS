//
//  NetworkingRouter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class NetworkingRouter: NetworkingRouterInput {
    // MARK: - Properties

    weak var view: ModuleTransitionable?

    // MARK: - NetworkingRouterInput

    /// Method for transition to Detail module
    func presentDetailModule(model: ExampleResponse) {
        let configurator = DetailModuleConfigurator()
        let module = configurator.configure(response: model)
        module.hidesBottomBarWhenPushed = true
        view?.push(module: module, animated: true)
    }

}
