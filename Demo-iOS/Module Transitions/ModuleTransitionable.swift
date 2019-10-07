//
//  ModuleTransitionable.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

protocol ModuleTransitionable: AnyObject {
    func showModule(_ module: UIViewController)
    func dismissView(animated: Bool, completion: (() -> Void)?)
    func presentModule(_ module: UIViewController, animated: Bool, completion: (() -> Void)?)
    func presentModuleFromTabBar(_ module: UIViewController, animated: Bool, completion: (() -> Void)?)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)
    func push(module: UIViewController, animated: Bool)
}

extension ModuleTransitionable where Self: UIViewController {
    func showModule(_ module: UIViewController) {
        show(module, sender: nil)
    }

    func dismissView(animated: Bool, completion: (() -> Void)?) {
        presentingViewController?.dismiss(animated: animated, completion: completion)
    }

    func presentModule(_ module: UIViewController, animated: Bool, completion: (() -> Void)?) {
        present(module, animated: animated, completion: completion)
    }

    func presentModuleFromTabBar(_ module: UIViewController, animated: Bool, completion: (() -> Void)?) {
        if let tabBarController = self.tabBarController {
            tabBarController.present(module, animated: animated, completion: completion)
        } else {
            present(module, animated: animated, completion: completion)
        }
    }

    func pop(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }

    func popToRoot(animated: Bool) {
        navigationController?.popToRootViewController(animated: animated)
    }

    func push(module: UIViewController, animated: Bool) {
        navigationController?.pushViewController(module, animated: animated)
    }

}
