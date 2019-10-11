//
//  ExampleEntity.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import RealmSwift

/// Example entity
final class ExampleEntity: Object {

    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var body = ""
}
