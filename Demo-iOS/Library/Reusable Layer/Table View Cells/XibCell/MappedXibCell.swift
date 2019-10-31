//
//  MappedXibCell.swift
//  Demo-iOS
//
//  Created by ltblueberry on 10/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

/// Class for mapped XibCell
final class MappedXibCell {
    // MARK: - Cell

    let cell: XibCell

    // MARK: - InitiroundedLoweralizer

    init(_ cell: XibCell, withModel model: ExampleEntity) {
        self.cell = cell
        mapCell(withModel: model)
    }

    // MARK: - Private functions

    private func mapCell(withModel model: ExampleEntity) {
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        cell.contentView.backgroundColor = UIColor.clear

        cell.idLabel.text = model.id == 0 ? R.string.localizable.codeCellUnknownID() : "ID: \(model.id)"
        cell.titleLabel.text = model.title.isEmpty ? R.string.localizable.codeCellUnknownTitle() : model.title
        cell.bodyLabel.text = model.body.isEmpty ? R.string.localizable.codeCellUnknownBody() : model.body
    }
}
