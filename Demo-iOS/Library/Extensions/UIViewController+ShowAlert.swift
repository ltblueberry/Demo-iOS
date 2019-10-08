//
//  UIViewController+ShowAlert.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

extension UIViewController {
    public func showAlert(title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let closeAction = UIAlertAction(title: R.string.localizable.close(), style: .default, handler: nil)
//        alertController.addAction(closeAction)
        alertController.view.tintColor = UIColor.systemBlue
        present(alertController, animated: true)
    }

    public func showError(errorMessage: String) {
        //showAlert(title: R.string.localizable.error(), message: errorMessage)
    }
}
