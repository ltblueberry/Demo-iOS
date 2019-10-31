//
//  LaunchViewController.swift
//  Demo-iOS
//
//  Created by ltblueberry on 07/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import UIKit

final class LaunchViewController: UIViewController, ModuleTransitionable {
    // MARK: - Outlets
    @IBOutlet private var versionLabel: UILabel!

    // MARK: - Properties

    var output: LaunchViewOutput?

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVersionLabel()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        output?.viewDidAppear()
    }

    // MARK: - Private Methods

    private func setupVersionLabel() {
        versionLabel.text = getAppVersion()
    }

    private func getAppVersion() -> String {
        let versionKey = "CFBundleShortVersionString"
        let buildKey = "CFBundleVersion"
        guard let version = Bundle.main.object(forInfoDictionaryKey: versionKey) as? String,
            let build: String = Bundle.main.object(forInfoDictionaryKey: buildKey) as? String else {
            return "Unknown version"
        }

        var info = ""
        #if DEBUG
            info = "(Debug)"
        #else
            let isTestFlight = Bundle.main.appStoreReceiptURL?.lastPathComponent == "sandboxReceipt"
            if isTestFlight {
                info = "(TestFlight)"
            }
        #endif
        return "v\(version).b\(build)\(info)"
    }
}
