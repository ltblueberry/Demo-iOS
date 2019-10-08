//
//  NetworkingViewInput.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation

protocol NetworkingViewInput: AnyObject {
    func reload(items: [ExampleResponse])
    func showHUD()
    func hideHUD()
    func showError(errorMessage: String)
}
