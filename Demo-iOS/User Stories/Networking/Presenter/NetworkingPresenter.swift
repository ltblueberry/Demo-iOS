//
//  NetworkingPresenter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Moya

final class NetworkingPresenter: NetworkingViewOutput, NetworkingModuleInput, NetworkingAdapterOutput {

    // MARK: - Properties

    weak var view: NetworkingViewInput?
    var router: NetworkingRouterInput?
    var output: NetworkingModuleOutput?

    // MARK: - Private Properties
    private let exampleApiProvider = MoyaProvider<ExampleApi>(plugins: [NetworkLoggerPlugin(verbose: true)])

    // MARK: - NetworkingViewOutput

    func viewDidLoad() {
        view?.showHUD()
        exampleApiProvider.request(.example) { [weak self] result in
            self?.view?.hideHUD()
            switch result {
            case let .success(moyaResponse):
                self?.exampleSuccessCompletion(response: moyaResponse)
            case let .failure(moyaError):
                self?.exampleFailureCompletion(error: moyaError)
            }
        }
    }

    // MARK: - NetworkingAdapterOutput

    func didSelect(item: ExampleResponse) {
        print(item)
    }

    // MARK: - Moya Reqeusts Completions

    private func exampleSuccessCompletion(response: Response) {
        do {
            let data = try response.map([ExampleResponse].self)
            view?.reload(items: data)
        } catch {
            view?.showError(errorMessage: R.string.localizable.mappingError())
        }
    }

    private func exampleFailureCompletion(error: MoyaError) {
        view?.showError(errorMessage: error.localizedDescription)
    }
}
