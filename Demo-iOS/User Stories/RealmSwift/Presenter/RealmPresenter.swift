//
//  RealmPresenter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import RealmSwift

final class RealmPresenter: RealmViewOutput, RealmModuleInput, RealmAdapterOutput {

    // MARK: - Properties

    weak var view: RealmViewInput?
    var router: RealmRouterInput?
    var output: RealmModuleOutput?

    // MARK: - Private Properties

    private var realm: Realm {
        do {
            return try Realm()
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }

    // MARK: - RealmViewOutput

    func viewDidLoad() {
        let items = Array(realm.objects(ExampleEntity.self))
        view?.reload(items: items)
    }

    // MARK: - RealmAdapterOutput

    func didSelect(item: ExampleEntity) {
        router?.presentDetailModule(model: item)
    }

}
