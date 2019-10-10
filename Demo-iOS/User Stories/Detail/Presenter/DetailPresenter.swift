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
    private var response: ExampleResponse?
    private var entity: ExampleEntity?

    // MARK: - DetailModuleInput

    func configureModule(with response: ExampleResponse) {
        self.response = response
    }

    func configureModule(with entity: ExampleEntity) {
        self.entity = entity
    }

    // MARK: - DetailViewOutput

    func viewDidLoad() {
        if let model = response {
            view?.update(with: model)
        } else if let model = entity {
            view?.update(with: model)
        }
    }

}
