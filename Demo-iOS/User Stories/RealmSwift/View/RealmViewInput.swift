//
//  RealmViewInput.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

protocol RealmViewInput: AnyObject {
    func reload(items: [ExampleEntity])
    func showError(errorMessage: String)
}
