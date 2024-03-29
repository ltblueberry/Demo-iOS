//
//  AdapterProtocol.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

/// Adapter protocol for User Stories modules with table view
protocol AdapterProtocol: AnyObject, UITableViewDelegate, UITableViewDataSource {
    associatedtype Item
    var items: [Item] { get set }
}
