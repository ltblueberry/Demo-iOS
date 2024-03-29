//
//  DetailModuleConfigurator.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class DetailModuleConfigurator {
    // MARK: - Internal methods

    func configure(response: ExampleResponse, output: DetailModuleOutput? = nil) -> DetailViewController {

        let view = DetailViewController()

        let presenter = DetailPresenter()
        let router = DetailRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        presenter.configureModule(with: response)

        return view
    }

    func configure(entity: ExampleEntity, output: DetailModuleOutput? = nil) -> DetailViewController {

        let view = DetailViewController()

        let presenter = DetailPresenter()
        let router = DetailRouter()

        presenter.view = view
        presenter.router = router
        presenter.output = output
        router.view = view
        view.output = presenter

        presenter.configureModule(with: entity)

        return view
    }
}
