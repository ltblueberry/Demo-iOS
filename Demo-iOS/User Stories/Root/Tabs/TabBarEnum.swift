//
//  TabBarEnum.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import UIKit

public enum TabBarEnum: Int {
    case networking = 0
    case realm = 1

    func setupModule() -> UIViewController {
        switch self {
        case .networking:
            let configurator = NetworkingModuleConfigurator()
            let module = configurator.configure()
            return module
        case .realm:
            let configurator = RealmModuleConfigurator()
            let module = configurator.configure()
            return module
        }
    }

    func getTitle() -> String {
        switch self {
        case .networking:
            return R.string.localizable.tabTitleNetworking()
        case .realm:
            return R.string.localizable.tabTitleRealm()
        }
    }

    func getIcon() -> UIImage? {
        return R.image.tabItemIcon()
    }

    func needNavigation() -> Bool {
        return true
    }

    func isEnabled() -> Bool {
        return true
    }

    func configure() -> TabBarViewModel {
        let title = getTitle()
        let image = getIcon()
        let controller = setupModule()
        let isEnabled = self.isEnabled()
        let withNavigation = needNavigation()
        let tab = TabBarViewModel(title: title, image: image, controller: controller, isEnabled: isEnabled, withNavigation: withNavigation)
        return tab
    }

    static func getTabs() -> [TabBarViewModel] {
        var result: [TabBarViewModel] = []
        for index in 0 ... 1 {
            guard let tab = TabBarEnum(rawValue: index) else { continue }
            result.append(tab.configure())
        }
        return result
    }
}
