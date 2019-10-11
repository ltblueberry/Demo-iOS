//
//  NetworkingAdapterOutput.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

/// Output protocol for NetworkingAdapter
protocol NetworkingAdapterOutput: AnyObject {
    /// Notify that item has been selected
    func didSelect(item: ExampleResponse)
}
