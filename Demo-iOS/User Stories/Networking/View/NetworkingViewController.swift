//
//  NetworkingViewController.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD

final class NetworkingViewController: UIViewController, NetworkingViewInput, ModuleTransitionable {
    // MARK: - Outlets

    private var tableView: UITableView!

    // MARK: - Properties

    var output: NetworkingViewOutput?
    var adapter: NetworkingAdapter?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        configureBackButton()
        setNavigationTitle(R.string.localizable.networkingModuleNavigationTitle())
        setupTableView()

        output?.viewDidLoad()
    }

    // MARK: - NetworkingViewInput

    func reload(items: [ExampleResponse]) {
        adapter?.items = items
        tableView.reloadData()
    }

    func showHUD() {
        SVProgressHUD.show()
    }

    func hideHUD() {
        SVProgressHUD.dismiss()
    }

    // MARK: - Private Methods

    private func setupTableView() {
        tableView = UITableView(frame: .zero, style: .grouped)

        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false

        tableView.setTop(to: view.safeAreaLayoutGuide.topAnchor)
        tableView.setLeading(to: view.safeAreaLayoutGuide.leadingAnchor)
        tableView.setTrailing(to: view.safeAreaLayoutGuide.trailingAnchor)
        tableView.setBottom(to: view.safeAreaLayoutGuide.bottomAnchor)

        tableView.backgroundColor = UIColor.secondarySystemBackground
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100

        tableView.delegate = adapter
        tableView.dataSource = adapter

        tableView.registerCellClass(CodeCell.self)
    }

}
