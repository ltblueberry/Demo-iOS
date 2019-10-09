//
//  DetailPresenter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

final class DetailPresenter: DetailViewOutput, DetailModuleInput {

    // MARK: - Properties

    weak var view: DetailViewInput?
    var router: DetailRouterInput?
    var output: DetailModuleOutput?

    // MARK: - Private Properties
    private var model: ExampleResponse!

    // MARK: - DetailModuleInput

    func configureModule(with model: ExampleResponse) {
        self.model = model
    }

    // MARK: - DetailViewOutput

    func viewDidLoad() {
        view?.update(with: model)
    }

}
