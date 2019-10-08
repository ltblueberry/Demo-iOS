//
//  MappedCodeCell.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

/// Class for mapped CodeCell
final class MappedCodeCell {
    // MARK: - Cell

    let cell: CodeCell

    // MARK: - InitiroundedLoweralizer

    init(_ cell: CodeCell, withModel model: ExampleResponse) {
        self.cell = cell
        mapCell(withModel: model)
    }

    // MARK: - Private functions

    private func mapCell(withModel model: ExampleResponse) {
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        cell.contentView.backgroundColor = UIColor.clear
        cell.containerView.backgroundColor = UIColor.white

        cell.idLabel.textColor = UIColor.lightGray
        cell.idLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        if let id = model.id {
            cell.idLabel.text = "ID: \(id)"
        } else {
            cell.idLabel.text = R.string.localizable.codeCellUnknownID()
        }

        cell.titleLabel.textColor = UIColor.black
        cell.titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        cell.titleLabel.numberOfLines = 2
        cell.titleLabel.text = model.title ?? R.string.localizable.codeCellUnknownTitle()

        cell.bodyLabel.textColor = UIColor.black.withAlphaComponent(0.7)
        cell.bodyLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        cell.bodyLabel.numberOfLines = 4
        cell.bodyLabel.text = model.body ?? R.string.localizable.codeCellUnknownBody()
    }
}
