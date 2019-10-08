//
//  NetworkingViewController.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

final class NetworkingViewController: UIViewController, NetworkingViewInput, ModuleTransitionable {
    // MARK: - Outlets

    @IBOutlet private var tableView: UITableView!

    // MARK: - Properties

    var output: NetworkingViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        output?.viewDidLoad()
    }

    // MARK: - Private Methods

}
