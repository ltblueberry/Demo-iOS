//
//  DetailViewController.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

final class DetailViewController: UIViewController, DetailViewInput, ModuleTransitionable {
    // MARK: - Outlets

    private lazy var scrollView: UIScrollView = {
        let component = UIScrollView()
        component.backgroundColor = UIColor.white
        return component
    }()

    private lazy var idLabel: UILabel = {
        let component = UILabel()
        component.textColor = UIColor.lightGray
        component.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        component.text = ""
        component.numberOfLines = 1
        return component
    }()

    private lazy var titleLabel: UILabel = {
        let component = UILabel()
        component.textColor = UIColor.black
        component.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        component.text = ""
        component.numberOfLines = 2
        return component
    }()

    private lazy var bodyLabel: UILabel = {
        let component = UILabel()
        component.textColor = UIColor.black.withAlphaComponent(0.7)
        component.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        component.text = ""
        component.numberOfLines = 0
        return component
    }()

    // MARK: - Properties

    var output: DetailViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationTitle(R.string.localizable.detailModuleNavigationTitle())
        layoutComponents()

        output?.viewDidLoad()
    }

    // MARK: - DetailViewInput

    func update(with model: ExampleResponse) {
        updateComponents(id: model.id, title: model.title, body: model.body)
    }

    func update(with model: ExampleEntity) {
        updateComponents(id: model.id, title: model.title, body: model.body)
    }

    // MARK: - Private Methods

    private func layoutComponents() {
        // Add ScrollView to view
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        scrollView.setTop(to: view.safeAreaLayoutGuide.topAnchor)
        scrollView.setLeading(to: view.safeAreaLayoutGuide.leadingAnchor)
        scrollView.setTrailing(to: view.safeAreaLayoutGuide.trailingAnchor)
        scrollView.setBottom(to: view.safeAreaLayoutGuide.bottomAnchor)

        // Add idLabel to ScrollView
        scrollView.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false

        idLabel.setTop(to: scrollView.topAnchor, constant: 8)
        idLabel.setLeading(to: scrollView.leadingAnchor, constant: 12)
        idLabel.setTrailing(to: scrollView.trailingAnchor, constant: -12)
        idLabel.setLeading(to: view.safeAreaLayoutGuide.leadingAnchor, constant: 12)
        idLabel.setTrailing(to: view.safeAreaLayoutGuide.trailingAnchor, constant: -12)

        // Add titleLabel to ScrollView
        scrollView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.setTop(to: idLabel.bottomAnchor, constant: 8)
        titleLabel.setLeading(to: scrollView.leadingAnchor, constant: 12)
        titleLabel.setTrailing(to: scrollView.trailingAnchor, constant: -12)

        // Add bodyLabel to ScrollView
        scrollView.addSubview(bodyLabel)
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false

        bodyLabel.setTop(to: titleLabel.bottomAnchor, constant: 8)
        bodyLabel.setLeading(to: scrollView.leadingAnchor, constant: 12)
        bodyLabel.setTrailing(to: scrollView.trailingAnchor, constant: -12)
        bodyLabel.setBottom(to: scrollView.bottomAnchor, constant: -8)

    }

    private func updateComponents(id: Int?, title: String?, body: String?) {
        if let id = id {
            idLabel.text = "ID: \(id)"
        } else {
            idLabel.text = R.string.localizable.codeCellUnknownID()
        }

        titleLabel.text = title ?? R.string.localizable.codeCellUnknownTitle()
        bodyLabel.text = body ?? R.string.localizable.codeCellUnknownBody()
    }

}
