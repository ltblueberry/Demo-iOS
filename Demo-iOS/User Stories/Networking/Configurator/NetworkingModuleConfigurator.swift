//
//  NetworkingModuleConfigurator.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class NetworkingModuleConfigurator {
    // MARK: - Internal methods

    func configure(output: NetworkingModuleOutput? = nil) -> NetworkingViewController {

        let view = NetworkingViewController()

        let presenter = NetworkingPresenter()
        let router = NetworkingRouter()
        let adapter = NetworkingAdapter()

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
