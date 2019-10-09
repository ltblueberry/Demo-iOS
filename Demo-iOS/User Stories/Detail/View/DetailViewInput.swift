//
//  DetailViewInput.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

protocol DetailViewInput: AnyObject {
    func update(with model: ExampleResponse)
}
