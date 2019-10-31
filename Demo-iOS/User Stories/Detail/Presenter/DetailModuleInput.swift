//
//  DetailModuleInput.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

protocol DetailModuleInput: AnyObject {
    /// Configure module with ExampleResponse model
    func configureModule(with response: ExampleResponse)

    /// Configure module with ExampleEntity model
    func configureModule(with entity: ExampleEntity)
}
