//
//  RealmModuleConfigurator.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class RealmModuleConfigurator {
    // MARK: - Internal methods

    func configure(output: RealmModuleOutput? = nil) -> RealmViewController {
        guard let view = UIStoryboard(name: String(describing: RealmViewController.self),
                                      bundle: Bundle.main).instantiateInitialViewController() as? RealmViewController else {
            fatalError("Can't load RealmViewController from storyboard, check that controller is initial view controller")
        }
        let presenter = RealmPresenter()
        let router = RealmRouter()
        let adapter = RealmAdapter()

        adapter.output = presenter
        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter
        view.adapter = adapter

        return view
    }
}
