//
//  CodeCell.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class CodeCell: UITableViewCell {

    public var containerView: UIViewWithBorder
    public var idLabel: UILabel
    public var titleLabel: UILabel
    public var bodyLabel: UILabel

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        containerView = UIViewWithBorder()
        idLabel = UILabel()
        titleLabel = UILabel()
        bodyLabel = UILabel()

        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(containerView)
        containerView.addSubview(idLabel)
        containerView.addSubview(titleLabel)
        containerView.addSubview(bodyLabel)

        containerView.translatesAutoresizingMaskIntoConstraints = false
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false

        containerView.setTop(to: contentView.topAnchor, constant: 4.0)
        containerView.setLeading(to: contentView.leadingAnchor, constant: 12.0)
        containerView.setTrailing(to: contentView.trailingAnchor, constant: -12.0)
        containerView.setBottom(to: contentView.bottomAnchor, constant: -4.0)

        idLabel.setTop(to: containerView.topAnchor, constant: 8.0)
        idLabel.setLeading(to: containerView.leadingAnchor, constant: 12.0)
        idLabel.setTrailing(to: containerView.trailingAnchor, constant: -12.0)

        titleLabel.setTop(to: idLabel.bottomAnchor, constant: 8.0)
        titleLabel.setLeading(to: containerView.leadingAnchor, constant: 12.0)
        titleLabel.setTrailing(to: containerView.trailingAnchor, constant: -12.0)

        bodyLabel.setTop(to: titleLabel.bottomAnchor, constant: 8.0)
        bodyLabel.setLeading(to: containerView.leadingAnchor, constant: 12.0)
        bodyLabel.setTrailing(to: containerView.trailingAnchor, constant: -12.0)
        bodyLabel.setBottom(to: containerView.bottomAnchor, constant: -8.0)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
