//
//  NetworkingPresenter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

final class NetworkingPresenter: NetworkingViewOutput, NetworkingModuleInput, NetworkingAdapterOutput {

    // MARK: - Properties

    weak var view: NetworkingViewInput?
    var router: NetworkingRouterInput?
    var output: NetworkingModuleOutput?

    // MARK: - NetworkingViewOutput

    func viewDidLoad() {

        view?.reload(items: [1, 2, 3, 4, 5])
    }

    // MARK: - NetworkingAdapterOutput

    func didSelect(item: Any) {
        print(item)
    }

    // MARK: - NetworkingModuleInput
}
