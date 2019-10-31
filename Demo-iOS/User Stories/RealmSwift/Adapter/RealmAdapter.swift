//
//  RealmAdapter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 09/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

/// TableView adapter for Realm module
class RealmAdapter: NSObject, AdapterProtocol {
    // MARK: - Public Properties

    public var items: [ExampleEntity] = []
    public weak var output: RealmAdapterOutput?
}

// MARK: - UITableViewDelegate methods

extension RealmAdapter {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let item = items[safe: indexPath.row] else { return }
        output?.didSelect(item: item)
    }

    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        return 15
    }

    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        return 8
    }

    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        return nil
    }

    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        return nil
    }
}

// MARK: - UITableViewDataSource methods

extension RealmAdapter {
    func tableView(_ tableView: UITableView, numberOfRowsInSection _: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let item = items[safe: indexPath.row] else { return UITableViewCell() }

        guard let cell = tableView.dequeueReusableCell(withIdentifier: XibCell.nameOfClass, for: indexPath) as? XibCell else {
            return UITableViewCell()
        }

        return MappedXibCell(cell, withModel: item).cell
    }

}
