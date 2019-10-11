//
//  ExampleResponse.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

/// Example entity
public struct ExampleResponse: Codable {

    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
}
