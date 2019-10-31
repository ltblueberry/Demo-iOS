//
//  RealmViewController.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

final class RealmViewController: UIViewController, RealmViewInput, ModuleTransitionable {
    // MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!

    // MARK: - Properties

    var output: RealmViewOutput?
    var adapter: RealmAdapter?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        configureBackButton()
        setNavigationTitle(R.string.localizable.realmModuleNavigationTitle())
        configureTableView()

        output?.viewDidLoad()
    }

    // MARK: - RealmViewInput

    func reload(items: [ExampleEntity]) {
        adapter?.items = items
        tableView.reloadData()
    }

    // MARK: - Private Methods

    private func configureTableView() {

        tableView.backgroundColor = UIColor.secondarySystemBackground
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100

        tableView.delegate = adapter
        tableView.dataSource = adapter

        tableView.registerCellNib(XibCell.self)
    }

}
