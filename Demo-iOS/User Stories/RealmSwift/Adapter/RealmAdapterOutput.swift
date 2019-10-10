//
//  RealmAdapterOutput.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

protocol RealmAdapterOutput: AnyObject {
    /// Notify that item has been selected
    func didSelect(item: ExampleEntity)
}
