//
//  NetworkingAdapter.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

class NetworkingAdapter: NSObject, AdapterProtocol {
    // MARK: - Public Properties

    public var items: [ExampleResponse] = []
    public weak var output: NetworkingAdapterOutput?
}

// MARK: - UITableViewDelegate methods

extension NetworkingAdapter {
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

extension NetworkingAdapter {
    func tableView(_ tableView: UITableView, numberOfRowsInSection _: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let item = items[safe: indexPath.row] else { return UITableViewCell() }

        guard let cell = tableView.dequeueReusableCell(withIdentifier: CodeCell.nameOfClass, for: indexPath) as? CodeCell else {
            return UITableViewCell()
        }

        return MappedCodeCell(cell, withModel: item).cell
    }

}
