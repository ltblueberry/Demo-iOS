//
//  RealmRouter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class RealmRouter: RealmRouterInput {
    // MARK: - Properties

    weak var view: ModuleTransitionable?

    // MARK: - RealmRouterInput

    func presentDetailModule(model: ExampleEntity) {
        let configurator = DetailModuleConfigurator()
        let module = configurator.configure(entity: model)
        module.hidesBottomBarWhenPushed = true
        view?.push(module: module, animated: true)
    }

}
